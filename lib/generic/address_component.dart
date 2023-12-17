import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_component.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddressComponent {
  /// The full text description or name of the address component as returned by the Geocoder.
  final String longName;

  /// An abbreviated textual name for the address component, if available.
  ///
  /// For example, an address component for the state of Alaska may have a long_name of "Alaska"
  /// and a short_name of "AK" using the 2-letter postal abbreviation.
  final String shortName;

  /// An array indicating the type of the address component. See the list of [supported types](https://developers.google.com/maps/documentation/places/web-service/supported_types).
  final List<String> types;

  const AddressComponent({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressComponent &&
          runtimeType == other.runtimeType &&
          longName == other.longName &&
          shortName == other.shortName &&
          listEquals(types, other.types);

  @override
  int get hashCode => longName.hashCode ^ shortName.hashCode ^ types.hashCode;
}
