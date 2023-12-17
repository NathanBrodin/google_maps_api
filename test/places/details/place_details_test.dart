import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api/places/details/request/place_details_request_options.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:google_maps_api/google_maps_api.dart';
import '../../mocks/mock_place_details_response.dart';

void main() {
  group("GoogleMapsAPI placeDetails", () {
    test("placeDetails request is making the correct request", () async {
      // Arrange
      late http.Request capturedRequest;
      final client = MockClient((request) async {
        capturedRequest = request;
        return http.Response(json.encode(jsonPlaceDetailsResponse), 200);
      });
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      await googleMapsAPI.places.details(
        placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
      );

      // Assert
      expect(capturedRequest.url.toString(), "https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJN1t_tDeuEmsRUsoyG83frY4&key=MY_API_KEY");
    });

    test("placeDetails response is returning the correct object", () async {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlaceDetailsResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      final result = await googleMapsAPI.places.details(
        placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
      );

      // Assert
      expect(result, placeDetailsResponse);
    });

    test("placeDetails request with option is making the correct request", () async {
      // Arrange
      late http.Request capturedRequest;
      final client = MockClient((request) async {
        capturedRequest = request;
        return http.Response(json.encode(jsonPlaceDetailsResponse), 200);
      });
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      await googleMapsAPI.places.details(
        placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
        options: PlaceDetailsRequestOptions(
            language: 'fr',
            fields: ['name', 'rating', 'formatted_phone_number']),
      );

      // Assert
      expect(capturedRequest.url.toString(), "https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJN1t_tDeuEmsRUsoyG83frY4&fields=name,rating,formatted_phone_number&language=fr&key=MY_API_KEY");
    });

    test("placeDetails with options response is returning the correct object",
        () async {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlaceDetailsResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      final result = await googleMapsAPI.places.details(
        placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
        options: PlaceDetailsRequestOptions(
            language: 'fr',
            fields: ['name', 'rating', 'formatted_phone_number']),
      );

      expect(result, placeDetailsResponse);
    });

    test("placeDetails empty input throws an error", () {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlaceDetailsResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act & Assert
      expect(() async {
        await googleMapsAPI.places.details(placeId: "");
      }, throwsA(isA<ArgumentError>()));
    });

    test("placeDetails http error response is catched", () {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlaceDetailsResponse), 300));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act & Assert
      expect(() async {
        await googleMapsAPI.places.details(placeId: "Error");
      }, throwsA(isA<Exception>()));
    });
  });
}
