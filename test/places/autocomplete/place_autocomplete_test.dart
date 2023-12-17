import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:google_maps_api_flutter/google_maps_api.dart';

import '../../mocks/mock_place_autocomplete_response.dart';

void main() {
  group("GoogleMapsAPI placeAutocomplete", () {
    test("placeAutocomplete request is making the correct request", () async {
      // Arrange
      late http.Request capturedRequest;
      final client = MockClient((request) async {
        capturedRequest = request;
        return http.Response(json.encode(jsonPlacesAutocompleteResponse), 200);
      });
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      await googleMapsAPI.places.autocomplete(
        input: "Paris, Fr",
      );

      // Assert
      expect(capturedRequest.url.toString(),
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Paris,%20Fr&key=MY_API_KEY");
    });

    test("placeAutocomplete response is returning the correct object",
        () async {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlacesAutocompleteResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      final result = await googleMapsAPI.places.autocomplete(
        input: "Paris, Fr",
      );

      // Assert
      expect(result, placesAutocompleteResponse);
    });

    test("placeAutocomplete request with options is making the correct request",
        () async {
      // Arrange
      late http.Request capturedRequest;
      final client = MockClient((request) async {
        capturedRequest = request;
        return http.Response(json.encode(jsonPlacesAutocompleteResponse), 200);
      });
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      await googleMapsAPI.places.autocomplete(
          input: "Paris",
          options: PlaceAutocompleteRequestOptions(
            components: ['fr', 'en', 'es'],
            language: 'fr',
            radius: 12,
            location: const LatLng(48.8584, 2.2945),
            offset: 3,
          ));

      // Assert
      expect(capturedRequest.url.toString(),
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Paris&components=country:fr%7Ccountry:en%7Ccountry:es&language=fr&location=48.8584%252.2945&offset=3&radius=12.0&key=MY_API_KEY");
    });

    test(
        "placeAutocomplete with options response is returning the correct object",
        () async {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlacesAutocompleteResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act
      final result = await googleMapsAPI.places.autocomplete(
          input: "Paris",
          options: PlaceAutocompleteRequestOptions(
            components: ['fr', 'en', 'es'],
            language: 'fr',
            radius: 12,
            location: const LatLng(48.8584, 2.2945),
            offset: 3,
          ));

      expect(result, placesAutocompleteResponse);
    });

    test("placeAutocomplete empty input throws an error", () {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlacesAutocompleteResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act & Assert
      expect(() async {
        await googleMapsAPI.places.autocomplete(input: "");
      }, throwsA(isA<ArgumentError>()));
    });

    test("placeAutocomplete http error response is catched", () {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlacesAutocompleteResponse), 300));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act & Assert
      expect(() async {
        await googleMapsAPI.places.autocomplete(input: "Error");
      }, throwsA(isA<Exception>()));
    });

    test("placeAutocomplete googleMapsAPI error is catched", () {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonErrorPlacesAutocompleteResponse), 200));
      final googleMapsAPI = GoogleMapsApi(
        apiKey: "MY_API_KEY",
        client: client,
      );

      // Act & Assert
      expect(() async {
        await googleMapsAPI.places.autocomplete(input: "Error");
      }, throwsA(isA<Exception>()));
    });
  });
}
