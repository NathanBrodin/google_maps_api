import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api/places/autocomplete/request/place_autocomplete_request_options.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  group("GoogleMapsAPI place autocomplete options", () {
    final placeAutocompleteRequestOptions = PlaceAutocompleteRequestOptions();

    test('Componants formatting returns the right format', () {
      // Arrange
      final List<String> components = ['fr', 'en', 'es'];
      const String expectedFormat =
          "&components=country:fr|country:en|country:es";

      // Act
      final result =
          placeAutocompleteRequestOptions.formatComponents(components);

      // Assert
      expect(result, expectedFormat);
    });

    test('Single componant formatting returns the right format', () {
      // Arrange
      final List<String> components = ['fr'];
      const String expectedFormat = "&components=country:fr";

      // Act
      final result =
          placeAutocompleteRequestOptions.formatComponents(components);

      // Assert
      expect(result, expectedFormat);
    });

    test("Types formatting returns the right format", () {
      // Arrange
      final List<String> types = ['book_store', 'cafe'];
      const String expectedFormat = "&types=book_store|cafe";

      // Act
      final result = placeAutocompleteRequestOptions.formatTypes(types);

      // Assert
      expect(result, expectedFormat);
    });

    test("Single type formatting returns the right format", () {
      // Arrange
      final List<String> types = ['book_store'];
      const String expectedFormat = "&types=book_store";

      // Act
      final result = placeAutocompleteRequestOptions.formatTypes(types);

      // Assert
      expect(result, expectedFormat);
    });

    test('Autocomplete options .toString() returns the right format', () {
      // Arrange
      final options = PlaceAutocompleteRequestOptions(
        components: ['fr', 'en', 'es'],
        language: 'fr',
        location: const LatLng(48.8584, 2.2945),
        offset: 3,
        origin: const LatLng(48.8584, 2.2945),
        radius: 100,
        region: 'fr',
        types: ['book_store', 'cafe'],
        sessiontoken: 'sessiontoken',
        strictbounds: true,
      );

      const String expectedFormat =
          "&components=country:fr|country:en|country:es&language=fr&location=48.8584%2.2945&offset=3&origin=48.8584%2.2945&radius=100.0&region=fr&sessiontoken=sessiontoken&strictbounds=true&types=book_store|cafe";

      // Act
      final result = options.toString();

      // Assert
      expect(result, expectedFormat);
    });
  });

  group('PlaceAutocompleteRequestOptions throws Argument eror', () {
    test('throws ArgumentError when offset is negative', () {
      expect(() => PlaceAutocompleteRequestOptions(offset: -1),
          throwsArgumentError);
    });

    test('throws ArgumentError when radius is less than or equal to zero', () {
      expect(() => PlaceAutocompleteRequestOptions(radius: 0),
          throwsArgumentError);
    });

    test('throws ArgumentError when components contain more than 5 countries',
        () {
      expect(
          () =>
              PlaceAutocompleteRequestOptions(components: List.filled(6, 'US')),
          throwsArgumentError);
    });

    test('throws ArgumentError when types contain more than 5 types', () {
      expect(
          () => PlaceAutocompleteRequestOptions(types: List.filled(6, 'type')),
          throwsArgumentError);
    });

    test('throws ArgumentError when location is specified but radius is not',
        () {
      expect(
          () => PlaceAutocompleteRequestOptions(location: const LatLng(0, 0)),
          throwsArgumentError);
    });
  });
}
