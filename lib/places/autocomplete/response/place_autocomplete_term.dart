import 'package:json_annotation/json_annotation.dart';

part 'place_autocomplete_term.g.dart';

/// https://developers.google.com/maps/documentation/places/web-service/autocomplete#PlaceAutocompleteTerm
@JsonSerializable(fieldRename: FieldRename.snake)
class PlaceAutocompleteTerm {
  /// Defines the start position of this term in the description, measured in Unicode characters
  final double offset;

  /// The text of the term.
  final String value;

  const PlaceAutocompleteTerm({
    required this.offset,
    required this.value,
  });

  factory PlaceAutocompleteTerm.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompleteTermFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceAutocompleteTermToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAutocompleteTerm &&
          offset == other.offset &&
          value == other.value;

  @override
  int get hashCode => offset.hashCode ^ value.hashCode;
}
