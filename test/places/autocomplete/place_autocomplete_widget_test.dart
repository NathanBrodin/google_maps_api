import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_api/widgets/autocomplete/place_autocomplete.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';

import '../../mocks/mock_place_autocomplete_response.dart';

void main() {
  group("PlaceAutocomplete tests", () {
    testWidgets("PlaceAutocomplete widget returns results from API",
        (widgetTester) async {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlacesAutocompleteResponse), 200));

      await widgetTester.pumpWidget(MaterialApp(
        home: Material(
          child: PlaceAutocomplete(apiKey: "apiKey", client: client),
        ),
      ));

      // Act
      await widgetTester.enterText(find.byType(TextField), "Paris");
      await widgetTester.pumpAndSettle(const Duration(milliseconds: 600));
      // Assert
      expect(find.text("Paris, France"), findsOneWidget);
    });

    testWidgets("PlaceAutocomplete widget returns exactly 5 results from API",
        (widgetTester) async {
      // Arrange
      final client = MockClient((request) async =>
          http.Response(json.encode(jsonPlacesAutocompleteResponse), 200));

      await widgetTester.pumpWidget(MaterialApp(
        home: Material(
          child: PlaceAutocomplete(apiKey: "apiKey", client: client),
        ),
      ));

      // Act
      await widgetTester.enterText(find.byType(TextField), "Paris");
      await widgetTester.pumpAndSettle(const Duration(milliseconds: 600));

      // Assert
      expect(find.text("Paris, France"), findsOneWidget);
      expect(find.text("Paris, TX, USA"), findsOneWidget);
      expect(find.text("Paris, TN, USA"), findsOneWidget);
      expect(find.text("Paris, Brant, ON, Canada"), findsOneWidget);
      expect(find.text("Paris, KY, USA"), findsOneWidget);
    });
  });
}
