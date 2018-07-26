import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/enums.dart';
import 'package:wordnik/src/models/audio_file.dart';
import 'package:wordnik/src/models/bigram.dart';
import 'package:wordnik/src/models/definition.dart';
import 'package:wordnik/src/models/example.dart';
import 'package:wordnik/src/models/example_search_results.dart';
import 'package:wordnik/src/models/frequency_summary.dart';
import 'package:wordnik/src/models/related.dart';
import 'package:wordnik/src/models/syllable.dart';
import 'package:wordnik/src/models/text_pron.dart';
import 'package:wordnik/src/models/word_object.dart';

/// Contains the API calls for the `word` endpoint.
abstract class WordApis implements ApiClient {
  /// Returns the [WordObject] for the specified [word].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg. `cats` will return `cat`). Otherwise, the exact [word]
  /// requested will be returned.
  ///
  /// If [includeSuggestions] is `true`, the returned [WordObject] will also
  /// include suggestions for correct spelling, case variants, etc.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<WordObject> getWord(
    String word,
    {
      bool useCanonical = false,
      bool includeSuggestions = true
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'includeSuggestions': '$includeSuggestions'
    };

    return WordObject.fromJson(await queryApi('word', 'json', word, queryParameters: parameters));
  }

  /// Fetches audio metadata for the given [word].
  ///
  /// If [useCanonical] is `true`, the [List] of [AudioFile] will be
  /// for the canonical form (`cats` => `cat`).
  ///
  /// The maximum number of results returned can be set with [limit].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<AudioFile>> getAudio(
    String word,
    {
      bool useCanonical = false,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'limit': '$limit'
    };

    List<dynamic> audioList = await queryApi('word', 'json', word, extraTerm: 'audio', queryParameters: parameters);

    return audioList.map((audio) => AudioFile.fromJson(audio)).toList();
  }

  /// Returns a [List] of [Definition] for the specified [word].
  ///
  /// The maximum number of results returned can be set with [limit].
  ///
  /// You can limit the results to one or more parts of speech by listing
  /// them in [partOfSpeech]. Otherwise, the default is to return all
  /// parts of speech.
  ///
  /// If [includeRelated] is `true`, the returned definitions will contain
  /// a list of related words.
  ///
  /// If [sourceDictionaries] is set to `all`, results from all sources
  /// will be returned. If specific dictionaries are listed, results will
  /// only be returned from the first specified source that has definitions.
  /// If blank, the results will be from the first dictionary that has
  /// definitions, searched in the following order: `ahd` => `wiktionary`
  /// => `webster` => `century` => `wordnet`.
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, results will be for the
  /// exact [word] specified.
  ///
  /// If [includeTags] is `true`, the response text will include XML tags.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<Definition>> getDefinitions(
    String word,
    {
      int limit = 200,
      List<String> partOfSpeech,
      bool includeRelated = false,
      List<String> sourceDictionaries,
      bool useCanonical = false,
      bool includeTags = false
    }
  ) async {
    Map<String, String> parameters = {
      'word': word,
      'limit': '$limit',
      'partOfSpeech': partOfSpeech?.join(',') ?? '',
      'includeRelated': '$includeRelated',
      'sourceDictionaries': sourceDictionaries?.join(',') ?? '',
      'useCanonical': '$useCanonical',
      'includeTags': '$includeTags'
    };

    List<dynamic> definitionList = await queryApi('word', 'json', word, extraTerm: 'definitions', queryParameters: parameters);

    return definitionList.map((definition) => Definition.fromJson(definition)).toList();
  }

  /// Fetches etymology data for the specified [word]
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<String>> getEtymologies(
    String word,
    {
      bool useCanonical = false,
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical'
    };

    List<dynamic> eList = await queryApi('word', 'json', word, extraTerm: 'etymologies', queryParameters: parameters);

    return eList.map((e) => e.toString()).toList();
  }

  /// Returns examples for the specified [word].
  ///
  /// If [includeDuplicates] is `true`, the results will include duplicate
  /// examples found in other sources. Otherwise, only the first examples
  /// found will be returned.
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// You can [skip] a specified number of results, and [limit] the number
  /// of results returned.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<ExampleSearchResults> getExamples(
    String word,
    {
      bool includeDuplicates = false,
      bool useCanonical = false,
      int skip = 0,
      int limit = 5
    }
  ) async {
    Map<String, String> parameters = {
      'includeDuplicates': '$includeDuplicates',
      'useCanonical': '$useCanonical',
      'skip': '$skip',
      'limit': '$limit'
    };

    return ExampleSearchResults.fromJson(await queryApi('word', 'json', word, extraTerm: 'examples', queryParameters: parameters));
  }

  /// Returns usage information for the specified [word] for the time period
  /// starting at [startYear] up to [endYear].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise results for the exact
  /// [word] specified will be returned.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<FrequencySummary> getWordFrequency(
    String word,
    {
      bool useCanonical = false,
      int startYear = 1800,
      int endYear = 2012
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'startYear': '$startYear',
      'endYear': '$endYear'
    };

    return FrequencySummary.fromJson(await queryApi('word', 'json', word, extraTerm: 'frequency', queryParameters: parameters));
  }

  /// Returns [Syllable] information for the specified [word].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// You can choose a specific [sourceDictionary] to use.
  ///
  /// You can restrict the number of syllables returned with [limit], though why
  /// you would ever want to do that is beyond me...
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<Syllable>> getHyphenation(
    String word,
    {
      bool useCanonical = false,
      SourceDictionary sourceDictionary,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'sourceDictionary': (sourceDictionary == null) ? '' : sourceDictionary.toString().split('.')[1],
      'limit': '$limit'
    };

    List<dynamic> syllableList = await queryApi('word', 'json', word, extraTerm: 'hyphenation', queryParameters: parameters);

    return syllableList.map((syllable) => Syllable.fromJson(syllable)).toList();
  }

  // TODO: What is WLMI?
  /// Fetches [Bigram] phrases for the specified [word].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// The maximum number of results to return can be specified with [limit].
  ///
  /// You can also specify the minimum [wlmi] for the returned phrases.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<Bigram>> getPhrases(
    String word,
    {
      bool useCanonical = false,
      int limit = 5,
      int wlmi = 0
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'limit': '$limit',
      'wlmi': '$wlmi'
    };

    List<dynamic> bigramList = await queryApi('word', 'json', word, extraTerm: 'phrases', queryParameters: parameters);

    return bigramList.map((bigram) => Bigram.fromJson(bigram)).toList();
  }

  /// Returns text pronunciations for the specified [word].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// You can choose a specific [sourceDictionary] to use.
  ///
  /// The [type] of pronunciation returned can be specified. If left unset,
  /// all available types are returned.
  ///
  /// The maximum number of results to return can be specified with [limit].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<TextPron>> getTextPronunciations(
    String word,
    {
      bool useCanonical = false,
      SourceDictionary sourceDictionary,
      TextPronType type,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'sourceDictionary': (sourceDictionary == null) ? '' : sourceDictionary.toString().split('.')[1],
      'typeFormat': (type == null) ? '' : type.toString().split('.')[1].replaceAll('_', '-'),
      'limit': '$limit'
    };

    List<dynamic> proList = await queryApi('word', 'json', word, extraTerm: 'pronunciations', queryParameters: parameters);

    return proList.map((pro) => TextPron.fromJson(pro)).toList();
  }

  // TODO: Change relationshipTypes?
  /// Returns words related to the specified [word].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// You can limit the results to specific [relationshipTypes], otherwise
  /// all relationships are returned. Valid values are: `synonym`, `antonym`, `variant`,
  /// `equivalent`, `cross-reference`, `related-word`, `rhyme`, `form`, `etymologically-related-term`,
  /// `hypernym`, `hyponym`, `inflected-form`, `primary`, `same-context`, `verb-form`,
  /// `verb-stem`, and `has_topic`.
  ///
  /// [limitPerRelationshipType] specifies how many words to return for
  /// each relationship type found.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<Related>> getRelatedWords(
    String word,
    {
      bool useCanonical = false,
      List<String> relationshipTypes,
      int limitPerRelationshipType = 10
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'relationshipTypes': relationshipTypes?.join(','),
      'limitPerRelationshipType': '$limitPerRelationshipType'
    };

    List<dynamic> relatedList = await queryApi('word', 'json', word, extraTerm: 'relatedWords', queryParameters: parameters);

    return relatedList.map((related) => Related.fromJson(related)).toList();
  }

  /// Returns a top [Example] for the specified [word].
  ///
  /// If [useCanonical] is `true`, the API will try to return the correct
  /// root word (eg, `cats` => `cat`). Otherwise, the exact [word] specified
  /// will be returned.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<Example> getTopExample(
    String word,
    {
      bool useCanonical = false
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical'
    };

    return Example.fromJson(await queryApi('word', 'json', word, extraTerm: 'topExample', queryParameters: parameters));
  }
}
