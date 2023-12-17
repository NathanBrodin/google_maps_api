import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api_flutter/places/details/request/place_details_request_options.dart';

void main() {
  group("GoogleMapsAPI place details options", () {
    final placeDetailsRequestOptions = PlaceDetailsRequestOptions();
    test("Format fields returns the right string", () {
      // Arrange
      final List<String> fields = ['formatted_address', 'name', 'geometry'];
      const String expectedFormat = "&fields=formatted_address,name,geometry";

      // Act
      final result = placeDetailsRequestOptions.formatFields(fields);

      // Assert
      expect(result, expectedFormat);
    });

    test("Format fields returns an empty string if fields is null", () {
      // Arrange
      const List<String>? fields = null;
      const String expectedFormat = "";

      // Act
      final result = placeDetailsRequestOptions.formatFields(fields);

      // Assert
      expect(result, expectedFormat);
    });

    test("Format fields returns an empty string if fields is empty", () {
      // Arrange
      final List<String> fields = [];
      const String expectedFormat = "";

      // Act
      final result = placeDetailsRequestOptions.formatFields(fields);

      // Assert
      expect(result, expectedFormat);
    });

    test("toString method returns the right object", () {
      // Arrange
      final List<String> fields = ['formatted_address', 'name', 'geometry'];
      final options = PlaceDetailsRequestOptions(
        fields: fields,
        language: "fr",
        region: "fr",
        reviewsNoTranslations: true,
        reviewsSort: ReviewsSort.most_relevant,
        sessiontoken: "sessiontoken",
      );

      const String expectedFormat =
          "&fields=formatted_address,name,geometry&language=fr&region=fr&reviews=true&sort=ReviewsSort.most_relevant&sessiontoken=sessiontoken";

      // Act
      final result = options.toString();

      // Assert
      expect(result, expectedFormat);
    });
  });
}
