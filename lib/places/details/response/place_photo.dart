import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_photo.g.dart';

/// A photo of a Place. The photo can be accesed via the Place Photo API using an url in the following pattern:
/// https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=photo_reference&key=YOUR_API_KEY
/// See [Place Photos](https://developers.google.com/places/web-service/photos) for more information.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlacePhoto {
  /// The height of the photo.
  final int height;

  /// The HTML attributions for the photo.
  final List<String> htmlAttributions;

  /// A string used to identify the photo when you perform a Photo request.
  final String photoReference;

  /// The width of the photo.
  final int width;

  const PlacePhoto({
    required this.height,
    required this.htmlAttributions,
    required this.photoReference,
    required this.width,
  });

  factory PlacePhoto.fromJson(Map<String, dynamic> json) =>
      _$PlacePhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PlacePhotoToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlacePhoto &&
          runtimeType == other.runtimeType &&
          height == other.height &&
          listEquals(htmlAttributions, other.htmlAttributions) &&
          photoReference == other.photoReference &&
          width == other.width;

  @override
  int get hashCode =>
      height.hashCode ^
      htmlAttributions.hashCode ^
      photoReference.hashCode ^
      width.hashCode;
}
