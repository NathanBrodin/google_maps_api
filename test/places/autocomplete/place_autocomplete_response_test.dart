import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_matched_substring.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_prediction.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_response.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_structured_format.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_term.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/places_autocomplete_status.dart';

import '../../mocks/mock_place_autocomplete_response.dart';

void main() {
  group("PlaceAutocompleteResponse fromJson test", () {
    test("PlaceAutocompleteResponse fromJson", () {
      // Arrange
      const expectedPlacesAutocompleteResponse = placesAutocompleteResponse;

      // Act
      final result =
          PlacesAutocompleteResponse.fromJson(jsonPlacesAutocompleteResponse);

      // Assert
      expect(result, expectedPlacesAutocompleteResponse);
    });

    test("PlaceAutocompleteTerm fromJson", () {
      // Arrange
      const expectedPlaceAutocompleteTerm =
          PlaceAutocompleteTerm(offset: 0, value: "Paris");
      const jsonPlaceAutocompleteTerm = {"offset": 0, "value": "Paris"};

      // Act
      final result = PlaceAutocompleteTerm.fromJson(jsonPlaceAutocompleteTerm);

      // Assert
      expect(result, expectedPlaceAutocompleteTerm);
    });

    test("PlaceAutocompleteMatchedSubstring fromJson", () {
      // Arrange
      const expectedPlaceAutocompleteMatchedSubstring =
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0);
      const jsonPlaceAutocompleteMatchedSubstring = {"length": 5, "offset": 0};

      // Act
      final result = PlaceAutocompleteMatchedSubstring.fromJson(
          jsonPlaceAutocompleteMatchedSubstring);

      // Assert
      expect(result, expectedPlaceAutocompleteMatchedSubstring);
    });

    test("PlaceAutocompleteStructuredFormat fromJson", () {
      // Arrange
      const expectedPlaceAutocompleteStructuredFormat =
          PlaceAutocompleteStructuredFormat(
        mainText: "Paris",
        mainTextMatchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        secondaryText: "France",
      );
      const jsonPlaceAutocompleteStructuredFormat = {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0},
        ],
        "secondary_text": "France",
      };

      // Act
      final result = PlaceAutocompleteStructuredFormat.fromJson(
          jsonPlaceAutocompleteStructuredFormat);

      // Assert
      expect(result, expectedPlaceAutocompleteStructuredFormat);
    });

    test("PlaceAutocompletePrediction fromJson", () {
      // Arrange
      const expectedPlaceAutocompletePrediction = PlaceAutocompletePrediction(
        description: "Paris, France",
        matchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        placeId: "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
        structuredFormatting: PlaceAutocompleteStructuredFormat(
          mainText: "Paris",
          mainTextMatchedSubstrings: [
            PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
          ],
          secondaryText: "France",
        ),
        terms: [
          PlaceAutocompleteTerm(offset: 0, value: "Paris"),
          PlaceAutocompleteTerm(offset: 7, value: "France"),
        ],
        types: ["locality", "political", "geocode"],
      );
      const jsonPlaceAutocompletePrediction = {
        "description": "Paris, France",
        "matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "place_id": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
        "reference": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
        "structured_formatting": {
          "main_text": "Paris",
          "main_text_matched_substrings": [
            {"length": 5, "offset": 0}
          ],
          "secondary_text": "France",
        },
        "terms": [
          {"offset": 0, "value": "Paris"},
          {"offset": 7, "value": "France"},
        ],
        "types": ["locality", "political", "geocode"],
      };

      // Act
      final result =
          PlaceAutocompletePrediction.fromJson(jsonPlaceAutocompletePrediction);

      // Assert
      expect(result, expectedPlaceAutocompletePrediction);
    });
  });

  group("PlaceAutocompleteResponse hashcode test", () {
    test("PlaceAutocompleteResponse hashcode", () {
      // Act
      final result =
          PlacesAutocompleteResponse.fromJson(jsonPlacesAutocompleteResponse);

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceAutocompleteTerm hashcode", () {
      const jsonPlaceAutocompleteTerm = {"offset": 0, "value": "Paris"};

      // Act
      final result = PlaceAutocompleteTerm.fromJson(jsonPlaceAutocompleteTerm);

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceAutocompleteMatchedSubstring hascode", () {
      // Arrange
      const jsonPlaceAutocompleteMatchedSubstring = {"length": 5, "offset": 0};

      // Act
      final result = PlaceAutocompleteMatchedSubstring.fromJson(
          jsonPlaceAutocompleteMatchedSubstring);

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceAutocompleteStructuredFormat hascode", () {
      // Arrange
      const jsonPlaceAutocompleteStructuredFormat = {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0},
        ],
        "secondary_text": "France",
      };

      // Act
      final result = PlaceAutocompleteStructuredFormat.fromJson(
          jsonPlaceAutocompleteStructuredFormat);

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceAutocompletePrediction hashcode", () {
      // Arrange
      const jsonPlaceAutocompletePrediction = {
        "description": "Paris, France",
        "matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "place_id": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
        "reference": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
        "structured_formatting": {
          "main_text": "Paris",
          "main_text_matched_substrings": [
            {"length": 5, "offset": 0}
          ],
          "secondary_text": "France",
        },
        "terms": [
          {"offset": 0, "value": "Paris"},
          {"offset": 7, "value": "France"},
        ],
        "types": ["locality", "political", "geocode"],
      };

      // Act
      final result =
          PlaceAutocompletePrediction.fromJson(jsonPlaceAutocompletePrediction);

      // Assert
      expect(result.hashCode, isNotNull);
    });
  });

  group("PlaceAutocompleteResponse status test", () {
    test("PlaceAutocompleteResponse status", () {
      // Act
      final result =
          PlacesAutocompleteResponse.fromJson(jsonPlacesAutocompleteResponse);

      // Assert
      expect(result.status, PlacesAutocompleteStatus.OK);
    });

    test("should return correct message for OK status", () {
      expect(
        handlePlacesAutocompleteStatus(PlacesAutocompleteStatus.OK),
        "API request was successful",
      );
    });

    test("should return correct message for ZERO_RESULTS status", () {
      expect(
        handlePlacesAutocompleteStatus(PlacesAutocompleteStatus.ZERO_RESULTS),
        "Search was successful but returned no results",
      );
    });

    test("should return correct message for INVALID_REQUEST status", () {
      expect(
        handlePlacesAutocompleteStatus(
            PlacesAutocompleteStatus.INVALID_REQUEST),
        "API request was malformed",
      );
    });

    test("should return correct message for OVER_QUERY_LIMIT status", () {
      expect(
        handlePlacesAutocompleteStatus(
            PlacesAutocompleteStatus.OVER_QUERY_LIMIT),
        "Query limit exceeded. Check billing and usage limits",
      );
    });

    test("should return correct message for REQUEST_DENIED status", () {
      expect(
        handlePlacesAutocompleteStatus(PlacesAutocompleteStatus.REQUEST_DENIED),
        "Request was denied. Check API key and permissions",
      );
    });

    test("should return correct message for UNKNOWN_ERROR status", () {
      expect(
        handlePlacesAutocompleteStatus(PlacesAutocompleteStatus.UNKNOWN_ERROR),
        "An unknown error occurred",
      );
    });
  });
}
