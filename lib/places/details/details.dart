import 'dart:convert';
import 'dart:io';
import 'package:google_maps_api/places/details/response/place_details_status.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_api/places/details/request/place_details_request_options.dart';
import 'package:google_maps_api/places/details/response/place_details_response.dart';

class DetailsService {
  final String apiKey;
  final http.Client client;

  DetailsService({required this.apiKey, required this.client});

  Future<PlaceDetailsResponse> details({
    required String placeId,
    PlaceDetailsRequestOptions? options,
  }) async {
    if (placeId == "") {
      throw ArgumentError.value(placeId, "placeId cannot be empty");
    }

    final requestURL = Uri.parse(
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId${options ?? ""}&key=$apiKey");

    // Making the request
    final response = await client.get(requestURL);

    if (response.statusCode == 200) {
      final placeDetailsResponseMap =
          json.decode(response.body) as Map<String, dynamic>;
      final placeDetailsResponse =
          PlaceDetailsResponse.fromJson(placeDetailsResponseMap);

      if (placeDetailsResponse.status != PlacesDetailsStatus.OK) {
        throw Exception(
            "${handlePlacesDetailsStatus(placeDetailsResponse.status)} ($requestURL)");
      }

      return placeDetailsResponse;
    } else {
      throw const HttpException("Http Places details API request failed");
    }
  }
}
