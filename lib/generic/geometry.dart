import 'package:google_maps_api/generic/bounds.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// An object describing the location.
class Geometry {
  /// See LatLngLiteral for more information.
  final LatLng location;

  /// See [Bounds] for more information.
  final Bounds viewport;

  const Geometry({
    required this.location,
    required this.viewport,
  });

  /// Converts this object to something serializable in JSON.
  Map<String, dynamic> toJson() => {
        'location': location.toJson(),
        'viewport': viewport.toJson(),
      };

  /// Converts a map in JSON format to its corresponding object.
  factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
        location: LatLng.fromJson(
                [json['location']['lat'], json['location']['lng']]) ??
            const LatLng(0, 0),
        viewport: Bounds.fromJson(json['viewport']),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geometry &&
          runtimeType == other.runtimeType &&
          location == other.location &&
          viewport == other.viewport;

  @override
  int get hashCode => location.hashCode ^ viewport.hashCode;
}
