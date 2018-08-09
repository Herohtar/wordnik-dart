## [v1.0.0](https://github.com/Herohtar/wordnik-dart/releases/tag/v1.0.0) - 2018-08-08

* Updated to fully support Dart 2
* Upgraded `json_seralizable` and updated object models to use the new default of generated ToJson methods instead of Mixins
* Removed an unused class and added a missing internal class
* Added a missing API call (`getScrabbleScore`)
* Updated the example and documentation


## [v0.4.0](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.4.0) - 2018-07-25

* Completed documentation for API calls
* API calls that used CSV strings were changed to use `List<String>`
* Multiple other API call parameters have been modified to work in a more sensible way
* Renamed `ApiTokenStatus` to `ApiKeyStatus`
* Added enums for use in the API calls that require them

## [v0.3.3](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.3.3) - 2018-07-15

* Added an `ApiException` which is now thrown when the API returns an error
* Modified `deleteWordsFromWordList()` and `addWordsToWordList()` to take `List<String>` instead of `List<StringValue>`
* `StringValue` is no longer exposed as it is now only used internally
* Completed documentation for `account`, `wordList`, and `wordLists` APIs
* Added more tests
* Added dependency for [`http_status`](https://pub.dartlang.org/packages/http_status) for internal use
* Major internal refactoring and reorganization for readability/maintainability (doesn't affect public-facing API)

## [v0.3.2](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.3.2) - 2018-07-14

* Improved example code
* Added [`credentials_helper`](https://pub.dartlang.org/packages/credentials_helper) to work with the API key more easily

## [v0.3.1](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.3.1) - 2018-07-11

* Fixed return type for `getEtymologies()`
* Fixed some parameter encoding issues
* Completed examples for all API calls
* Documentation work continues

## [v0.3.0](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.3.0) - 2018-07-10

* Implemented the remaining `word` API calls
* Added example package (incomplete)
* Minor internal API adjustments

## [v0.2.0](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.2.0) - 2018-07-10

* Implemented all `wordList` API calls
* Implemented `getDefinitions` from `word` API
* Tweaked JSON serialization options for less cluttered output
* Removed default values, for now
* Cleaned up internal API structure

## [v0.1.0](https://github.com/Herohtar/wordnik-dart/releases/tag/v0.1.0) - 2018-07-06

* Initial Pub release
* Implemented all `account`, `wordLists`, and `words` API calls
* Converted all models to use [json\_serializable](https://pub.dartlang.org/packages/json_serializable)

## v0.0.1 - 2018-07-03

* Initial commit.
