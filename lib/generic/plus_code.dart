import 'package:json_annotation/json_annotation.dart';

part 'plus_code.g.dart';

/// An encoded location reference, derived from latitude and longitude coordinates,
/// that represents an area, 1/8000th of a degree by 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
/// Plus codes can be used as a replacement for street addresses in places where they do not exist
/// (where buildings are not numbered or streets are not named).
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlusCode {
  /// The global_code is a 4 character area code and 6 character or longer local code (849VCWC8+R9).
  final String globalCode;

  /// The compound_code is a 6 character or longer local code with an explicit location
  /// (CWC8+R9, Mountain View, CA, USA). Some APIs may return an empty string if the compound_code is not available.
  final String? compoundCode;

  const PlusCode({
    required this.globalCode,
    this.compoundCode,
  });

  factory PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);

  Map<String, dynamic> toJson() => _$PlusCodeToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlusCode &&
          runtimeType == other.runtimeType &&
          globalCode == other.globalCode &&
          compoundCode == other.compoundCode;

  @override
  int get hashCode => globalCode.hashCode ^ compoundCode.hashCode;
}
