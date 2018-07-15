import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/audio_file.dart';
import 'package:wordnik/src/bigram.dart';
import 'package:wordnik/src/definition.dart';
import 'package:wordnik/src/example.dart';
import 'package:wordnik/src/example_search_results.dart';
import 'package:wordnik/src/frequency_summary.dart';
import 'package:wordnik/src/related.dart';
import 'package:wordnik/src/syllable.dart';
import 'package:wordnik/src/text_pron.dart';
import 'package:wordnik/src/word_object.dart';

abstract class WordApis implements ApiClient {
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

  Future<List<Definition>> getDefinitions(
    String word,
    {
      int limit = 200,
      String partOfSpeech,
      bool includeRelated = false,
      List<String> sourceDictionaries,
      bool useCanonical = false,
      bool includeTags = false
    }
  ) async {
    Map<String, String> parameters = {
      'word': word,
      'limit': '$limit',
      'partOfSpeech': partOfSpeech,
      'includeRelated': '$includeRelated',
      'sourceDictionaries': sourceDictionaries?.join(',') ?? '',
      'useCanonical': '$useCanonical',
      'includeTags': '$includeTags'
    };

    List<dynamic> definitionList = await queryApi('word', 'json', word, extraTerm: 'definitions', queryParameters: parameters);

    return definitionList.map((definition) => Definition.fromJson(definition)).toList();
  }

  /// Fetches etymology data for the specified [word]
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

  Future<List<Syllable>> getHyphenation(
    String word,
    {
      bool useCanonical = false,
      String sourceDictionary,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'sourceDictionary': sourceDictionary,
      'limit': '$limit'
    };

    List<dynamic> syllableList = await queryApi('word', 'json', word, extraTerm: 'hyphenation', queryParameters: parameters);

    return syllableList.map((syllable) => Syllable.fromJson(syllable)).toList();
  }

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

  Future<List<TextPron>> getTextPronunciations(
    String word,
    {
      bool useCanonical = false,
      String sourceDictionary,
      String typeFormat,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'sourceDictionary': sourceDictionary,
      'typeFormat': typeFormat,
      'limit': '$limit'
    };

    List<dynamic> proList = await queryApi('word', 'json', word, extraTerm: 'pronunciations', queryParameters: parameters);

    return proList.map((pro) => TextPron.fromJson(pro)).toList();
  }

  Future<List<Related>> getRelatedWords(
    String word,
    {
      bool useCanonical = false,
      String relationshipTypes,
      int limitPerRelationshipType = 10
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'relationshipTypes': relationshipTypes,
      'limitPerRelationshipType': '$limitPerRelationshipType'
    };

    List<dynamic> relatedList = await queryApi('word', 'json', word, extraTerm: 'relatedWords', queryParameters: parameters);

    return relatedList.map((related) => Related.fromJson(related)).toList();
  }

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
