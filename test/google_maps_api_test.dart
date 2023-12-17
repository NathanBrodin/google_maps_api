import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api/google_maps_api.dart';

void main() {
  group("GoogleMapsApi class test", () {
    test("Constructor without client", () {
      // Arrange
      const expectedApiKey = "API_KEY";

      // Act
      final result = GoogleMapsApi(
        apiKey: expectedApiKey,
      );

      // Assert
      expect(result.apiKey, expectedApiKey);
    });
  });
}
