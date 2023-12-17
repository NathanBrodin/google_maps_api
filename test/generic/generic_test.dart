import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api_flutter/generic/address_component.dart';
import 'package:google_maps_api_flutter/generic/bounds.dart';
import 'package:google_maps_api_flutter/generic/geometry.dart';
import 'package:google_maps_api_flutter/generic/plus_code.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  group("Generic classes fromJsom test", () {
    test("AddressComponent fromJson", () {
      // Arrange
      const expectedAddressComponent = AddressComponent(
        longName: "48",
        shortName: "48",
        types: ["street_number"],
      );

      // Act
      final result = AddressComponent.fromJson({
        "long_name": "48",
        "short_name": "48",
        "types": ["street_number"]
      });

      // Assert
      expect(result, expectedAddressComponent);
    });

    test("Bounds fromJson", () {
      // Arrange
      const expectedBounds = Bounds(
        northeast: LatLng(48.8900103, 2.2379899),
        southwest: LatLng(48.8899103, 2.2378899),
      );

      // Act
      final result = Bounds.fromJson({
        "northeast": {"lat": 48.8900103, "lng": 2.2379899},
        "southwest": {"lat": 48.8899103, "lng": 2.2378899},
      });

      // Assert
      expect(result, expectedBounds);
    });

    test("Geometry fromJson", () {
      // Arrange
      const expectedGeometry = Geometry(
        location: LatLng(48.8900103, 2.2379899),
        viewport: Bounds(
          northeast: LatLng(48.8913592802915, 2.239338880291502),
          southwest: LatLng(48.8886613197085, 2.236640919708498),
        ),
      );

      // Act
      final result = Geometry.fromJson({
        "location": {"lat": 48.8900103, "lng": 2.2379899},
        "viewport": {
          "northeast": {"lat": 48.8913592802915, "lng": 2.239338880291502},
          "southwest": {"lat": 48.8886613197085, "lng": 2.236640919708498},
        },
      });

      // Assert
      expect(result, expectedGeometry);
    });

    test("PlusCode fromJson", () {
      // Arrange
      const expectedPlusCode = PlusCode(
        compoundCode: "V9VC+R3 Paris, France",
        globalCode: "8FW4V9VC+R3",
      );

      // Act
      final result = PlusCode.fromJson({
        "compound_code": "V9VC+R3 Paris, France",
        "global_code": "8FW4V9VC+R3",
      });

      // Assert
      expect(result, expectedPlusCode);
    });
  });

  group("Generic hashcodes test", () {
    test("AddressComponent hashcode", () {
      // Act
      final result = AddressComponent.fromJson({
        "long_name": "48",
        "short_name": "48",
        "types": ["street_number"]
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("Bounds hashcode", () {
      // Act
      final result = Bounds.fromJson({
        "northeast": {"lat": 48.8900103, "lng": 2.2379899},
        "southwest": {"lat": 48.8899103, "lng": 2.2378899},
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("Geometry hashcode", () {
      // Act
      final result = Geometry.fromJson({
        "location": {"lat": 48.8900103, "lng": 2.2379899},
        "viewport": {
          "northeast": {"lat": 48.8913592802915, "lng": 2.239338880291502},
          "southwest": {"lat": 48.8886613197085, "lng": 2.236640919708498},
        },
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlusCode hashcode", () {
      // Act
      final result = PlusCode.fromJson({
        "compound_code": "V9VC+R3 Paris, France",
        "global_code": "8FW4V9VC+R3",
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });
  });
}
