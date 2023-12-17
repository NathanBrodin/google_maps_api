import 'package:json_annotation/json_annotation.dart';

part 'place_editorial_summary.g.dart';

/// Contains a summary of the place. A summary is comprised of a textual overview,
/// and also includes the language code for these if applicable.
/// Summary text must be presented as-is and can not be modified or altered.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceEditorialSummary {
  /// The language of the previous fields. May not always be present.
  final String? language;

  /// A medium-length textual summary of the place.
  final String? overview;

  const PlaceEditorialSummary({
    this.language,
    this.overview,
  });

  factory PlaceEditorialSummary.fromJson(Map<String, dynamic> json) =>
      _$PlaceEditorialSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceEditorialSummaryToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceEditorialSummary &&
          runtimeType == other.runtimeType &&
          language == other.language &&
          overview == other.overview;

  @override
  int get hashCode => language.hashCode ^ overview.hashCode;
}
