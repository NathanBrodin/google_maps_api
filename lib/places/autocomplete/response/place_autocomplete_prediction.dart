import 'package:flutter/foundation.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_matched_substring.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_structured_format.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_autocomplete_prediction.g.dart';

/// https://developers.google.com/maps/documentation/places/web-service/autocomplete#PlaceAutocompletePrediction
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceAutocompletePrediction {
  /// Contains the human-readable name for the returned result.
  final String description;

  /// A list of substrings that describe the location of the entered term in the prediction result text, so that the term can be highlighted if desired.
  final List<PlaceAutocompleteMatchedSubstring> matchedSubstrings;

  /// Provides pre-formatted text that can be shown in your autocomplete results.
  final PlaceAutocompleteStructuredFormat structuredFormatting;

  /// Contains an array of terms identifying each section of the returned description (a section of the description is generally terminated with a comma).
  final List<PlaceAutocompleteTerm> terms;

  /// The straight-line distance in meters from the origin.
  final int? distanceMeters;

  /// A textual identifier that uniquely identifies a place.
  final String? placeId;

  /// Contains an array of types that apply to this place.
  /// For example: [ "political", "locality" ] or [ "establishment", "geocode", "beauty_salon" ].
  final List<String>? types;

  const PlaceAutocompletePrediction({
    required this.description,
    required this.matchedSubstrings,
    required this.structuredFormatting,
    required this.terms,
    this.placeId,
    this.distanceMeters,
    this.types,
  });

  @override
  String toString() => description;

  factory PlaceAutocompletePrediction.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompletePredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceAutocompletePredictionToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAutocompletePrediction &&
          description == other.description &&
          listEquals(matchedSubstrings, other.matchedSubstrings) &&
          structuredFormatting == other.structuredFormatting &&
          listEquals(terms, other.terms) &&
          distanceMeters == other.distanceMeters &&
          placeId == other.placeId &&
          listEquals(types, other.types);

  @override
  int get hashCode =>
      description.hashCode ^
      matchedSubstrings.hashCode ^
      structuredFormatting.hashCode ^
      terms.hashCode ^
      distanceMeters.hashCode ^
      placeId.hashCode ^
      types.hashCode;
}
