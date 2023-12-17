import 'package:json_annotation/json_annotation.dart';
part 'place_autocomplete_matched_substring.g.dart';

/// https://developers.google.com/maps/documentation/places/web-service/autocomplete#PlaceAutocompleteMatchedSubstring
@JsonSerializable(fieldRename: FieldRename.snake)
class PlaceAutocompleteMatchedSubstring {
  /// Length of the matched substring in the prediction result text.
  final double length;

  /// Start location of the matched substring in the prediction result text.
  final double offset;

  const PlaceAutocompleteMatchedSubstring({
    required this.length,
    required this.offset,
  });

  factory PlaceAutocompleteMatchedSubstring.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceAutocompleteMatchedSubstringFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PlaceAutocompleteMatchedSubstringToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAutocompleteMatchedSubstring &&
          length == other.length &&
          offset == other.offset;

  @override
  int get hashCode => length.hashCode ^ offset.hashCode;
}
