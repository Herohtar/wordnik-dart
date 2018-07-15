import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';
import 'package:wordnik/src/models/api_exception.dart';
import 'package:wordnik/src/enums.dart';

/// Contains the core elements of the API.
abstract class ApiClient {
  /// The version of the API to use.
  static const int apiVersion = 4;

  /// The root domain of the API.
  static const String apiRoot = 'api.wordnik.com';

  /// The API key to use when calling the API.
  final String apiKey;

  /// The default constructor requires an [apiKey].
  ApiClient(this.apiKey);

  /// Directly query the API.
  ///
  /// [resource] should be one of the API endpoints.
  ///
  /// [format] can be either `json` or `xml`.
  ///
  /// [operation] is the operation to request from the endpoint. If the operation
  /// has two parts, the second part should be passed in [extraTerm].
  ///
  /// If the URL requires a query string, include them in [queryParameters].
  ///
  /// If the API call requires something other than `HTTP GET`, specify it in [method].
  /// When [method] is [ApiMethods.post] or [ApiMethods.put], you can specify data to
  /// submit in [body].
  ///
  /// You must provide [authToken] for any calls that require authentication.
  Future<dynamic> queryApi(
    String resource,
    String format,
    String operation,
    {
      String extraTerm,
      Map<String, String> queryParameters,
      ApiMethods method = ApiMethods.get,
      dynamic body,
      String authToken
    }
  ) async {
    List<String> segments = [
      'v$apiVersion',
      '$resource.$format',
      operation
    ];

    if (extraTerm != null) {
      segments.add(extraTerm);
    }

    Uri queryUri = Uri(
      scheme: 'https',
      host: apiRoot,
      pathSegments: segments,
      queryParameters: queryParameters,
    );

    Map<String, String> headers = {
      'api_key': apiKey,
      'Content-Type': 'application/json'
    };

    if (authToken != null) {
      headers['auth_token'] = authToken;
    }

    http.Response response;
    switch (method) {
      case ApiMethods.post:
        response = await http.post(queryUri, headers: headers, body: json.encode(body));
        break;
      case ApiMethods.put:
        response = await http.put(queryUri, headers: headers, body: json.encode(body));
        break;
      case ApiMethods.delete:
        response = await http.delete(queryUri, headers: headers);
        break;
      case ApiMethods.get:
      default:
        response = await http.get(queryUri, headers: headers);
        break;
    }

    dynamic responseData = (format == 'json') ? ((response.body.isNotEmpty) ? json.decode(response.body) : null) : response.body;

    if (response.statusCode == HttpStatusCode.OK) {
      return responseData;
    } else {
      throw ApiException.fromJson(responseData);
    }
  }
}
