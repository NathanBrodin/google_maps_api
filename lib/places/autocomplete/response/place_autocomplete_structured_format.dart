import 'package:flutter/foundation.dart';
import 'package:google_maps_api/places/autocomplete/response/place_autocomplete_matched_substring.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_autocomplete_structured_format.g.dart';

/// https://developers.google.com/maps/documentation/places/web-service/autocomplete#PlaceAutocompleteStructuredFormat
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceAutocompleteStructuredFormat {
  /// Contains the main text of a prediction, usually the name of the place.
  final String mainText;

  /// Contains an array with offset value and length. These describe the location of the entered term in the prediction result text, so that the term can be highlighted if desired.
  final List<PlaceAutocompleteMatchedSubstring> mainTextMatchedSubstrings;

  /// Contains the secondary text of a prediction, usually the location of the place.
  final String? secondaryText;

  /// Contains an array with offset value and length. These describe the location of the entered term in the prediction result text, so that the term can be highlighted if desired.
  final List<PlaceAutocompleteMatchedSubstring>? secondaryTextMatchedSubstrings;

  const PlaceAutocompleteStructuredFormat({
    required this.mainText,
    required this.mainTextMatchedSubstrings,
    this.secondaryText,
    this.secondaryTextMatchedSubstrings,
  });

  factory PlaceAutocompleteStructuredFormat.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceAutocompleteStructuredFormatFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PlaceAutocompleteStructuredFormatToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAutocompleteStructuredFormat &&
          mainText == other.mainText &&
          listEquals(
              other.mainTextMatchedSubstrings, mainTextMatchedSubstrings) &&
          secondaryText == other.secondaryText &&
          listEquals(other.secondaryTextMatchedSubstrings,
              secondaryTextMatchedSubstrings);

  @override
  int get hashCode =>
      mainText.hashCode ^
      mainTextMatchedSubstrings.hashCode ^
      secondaryText.hashCode ^
      secondaryTextMatchedSubstrings.hashCode;
}
