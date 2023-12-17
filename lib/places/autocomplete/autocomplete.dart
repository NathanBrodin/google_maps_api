import 'dart:convert';
import 'dart:io';
import 'package:google_maps_api/places/autocomplete/response/places_autocomplete_status.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_api/places/autocomplete/request/place_autocomplete_request_options.dart';
import 'package:google_maps_api/places/autocomplete/response/place_autocomplete_response.dart';

class AutocompleteService {
  final String apiKey;
  final http.Client client;

  AutocompleteService({required this.apiKey, required this.client});

  Future<PlacesAutocompleteResponse> autocomplete({
    required String input,
    PlaceAutocompleteRequestOptions? options,
  }) async {
    if (input == "") {
      throw ArgumentError.value(input, "Cannot search an empty string");
    }

    final requestURL = Uri.parse(
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input${options ?? ""}&key=$apiKey");

    // Making the request
    final response = await client.get(requestURL);

    if (response.statusCode == 200) {
      final placeAutocompleteResponseMap =
          json.decode(response.body) as Map<String, dynamic>;
      final placeAutocompleteResponse =
          PlacesAutocompleteResponse.fromJson(placeAutocompleteResponseMap);

      if (placeAutocompleteResponse.status != PlacesAutocompleteStatus.OK) {
        throw Exception(
            "${handlePlacesAutocompleteStatus(placeAutocompleteResponse.status)} ($requestURL): ${placeAutocompleteResponse.errorMessage}");
      }

      return placeAutocompleteResponse;
    } else {
      throw const HttpException("Http Places autocomplete API request failed");
    }
  }
}
