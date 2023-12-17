import 'package:google_maps_flutter/google_maps_flutter.dart';

/// A rectangle in geographical coordinates from points at the southwest and northeast corners.
class Bounds {
  /// See LatLngLiteral for more information.
  final LatLng northeast;

  /// See LatLngLiteral for more information.
  final LatLng southwest;

  const Bounds({
    required this.northeast,
    required this.southwest,
  });

  /// Converts this object to something serializable in JSON.
  Map<String, dynamic> toJson() => {
        'northeast': northeast.toJson(),
        'southwest': southwest.toJson(),
      };

  /// Converts a map in JSON format to its corresponding object.
  factory Bounds.fromJson(Map<String, dynamic> json) => Bounds(
        northeast: LatLng.fromJson(
              [json['northeast']['lat'], json['northeast']['lng']],
            ) ??
            const LatLng(0, 0),
        southwest: LatLng.fromJson(
              [json['southwest']['lat'], json['southwest']['lng']],
            ) ??
            const LatLng(0, 0),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Bounds &&
          runtimeType == other.runtimeType &&
          northeast == other.northeast &&
          southwest == other.southwest;

  @override
  int get hashCode => northeast.hashCode ^ southwest.hashCode;
}
