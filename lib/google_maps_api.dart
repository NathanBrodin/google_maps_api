library google_maps_api;

import 'package:google_maps_api/places/places.dart';
import 'package:http/http.dart' as http;

export 'package:google_maps_api/places/autocomplete/response/place_autocomplete_response.dart';
export 'package:google_maps_api/places/autocomplete/request/place_autocomplete_request_options.dart';

/// GoogleMapsApi instance.
/// You must provide your API key, enabled for web requests.
///
/// Usage example:
/// ```dart
/// final googleMapsApi = GoogleMapsApi(
///   apiKey: "YOUR_API_KEY"
/// );
///
/// Find the official Google Maps API documentation [here](https://developers.google.com/maps/documentation)
class GoogleMapsApi {
  /// Your Google Maps API key,
  /// It must be enable for web request, as we are using http request to access the API
  final String apiKey;

  /// The http client used to make the request, available as a parameter for mock testing purposes
  final http.Client _client;

  /// The Places API is a service for location data through a variety of methods.
  /// It returns formatted location data and imagery about establishments, geographic locations, or prominent points of interest.
  ///
  /// Find the official Google Maps Places API documentation [here](https://developers.google.com/maps/documentation/places/web-service/overview)
  late final Places places;

  GoogleMapsApi({
    required this.apiKey,
    http.Client? client,
  }) : _client = client ?? http.Client() {
    places = Places(
      apiKey: apiKey,
      client: _client,
    );
  }
}
