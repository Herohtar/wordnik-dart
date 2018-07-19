/// Allows specifying part of speech options for several API calls.
class PartOfSpeechOptions {
  final Map<String, bool> _options = {
    'noun': null,
    'adjective': null,
    'verb': null,
    'adverb': null,
    'interjection': null,
    'pronoun': null,
    'preposition': null,
    'abbreviation': null,
    'affix': null,
    'article': null,
    'auxiliary-verb': null,
    'conjunction': null,
    'definite-article': null,
    'family-name': null,
    'given-name': null,
    'idiom': null,
    'imperative': null,
    'noun-plural': null,
    'noun-posessive': null,
    'past-participle': null,
    'phrasal-prefix': null,
    'proper-noun': null,
    'proper-noun-plural': null,
    'proper-noun-posessive': null,
    'suffix': null,
    'verb-intransitive': null,
    'verb-transitive': null
  };

  /// Constructs a new [PartOfSpeechOptions] object with the specified settings.
  ///
  /// If an option is set to `true`, it will be included. If it is set to `false`, it
  /// will be excluded. The default (`null`) will leave the part of speech unaffected
  /// by any filters.
  PartOfSpeechOptions(
    {
      bool noun,
      bool adjective,
      bool verb,
      bool adverb,
      bool interjection,
      bool pronoun,
      bool preposition,
      bool abbreviation,
      bool affix,
      bool article,
      bool auxiliaryVerb,
      bool conjunction,
      bool definiteArticle,
      bool familyName,
      bool givenName,
      bool idiom,
      bool imperative,
      bool nounPlural,
      bool nounPosessive,
      bool pastParticiple,
      bool phrasalPrefix,
      bool properNoun,
      bool properNounPlural,
      bool properNounPosessive,
      bool suffix,
      bool verbIntransitive,
      bool verbTransitive
    }
  ) {
    _options['noun'] = noun;
    _options['adjective'] = adjective;
    _options['verb'] = verb;
    _options['adverb'] = adverb;
    _options['interjection'] = interjection;
    _options['pronoun'] = pronoun;
    _options['preposition'] = preposition;
    _options['abbreviation'] = abbreviation;
    _options['affix'] = affix;
    _options['article'] = article;
    _options['auxiliary-verb'] = auxiliaryVerb;
    _options['conjunction'] = conjunction;
    _options['definite-article'] = definiteArticle;
    _options['family-name'] = familyName;
    _options['given-name'] = givenName;
    _options['idiom'] = idiom;
    _options['imperative'] = imperative;
    _options['noun-plural'] = nounPlural;
    _options['noun-posessive'] = nounPosessive;
    _options['past-participle'] = pastParticiple;
    _options['phrasal-prefix'] = phrasalPrefix;
    _options['proper-noun'] = properNoun;
    _options['proper-noun-plural'] = properNounPlural;
    _options['proper-noun-posessive'] = properNounPosessive;
    _options['suffix'] = suffix;
    _options['verb-intransitive'] = verbIntransitive;
    _options['verb-transitive'] = verbTransitive;
  }

  /// Returns the parts of speech to include as a comma separated list.
  String get includeString => _options.entries.where((part) => part.value == true).map((part) => part.key).join(',');

  /// Returns the parts of speech to exclude as a comma separated list.
  String get excludeString => _options.entries.where((part) => part.value == false).map((part) => part.key).join(',');

  // TODO: make get/set for each property
}
