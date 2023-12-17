import 'package:json_annotation/json_annotation.dart';

part 'place_review.g.dart';

/// A review of the place submitted by a user.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlaceReview {
  /// The name of the user who submitted the review. Anonymous reviews are attributed to "A Google user".
  final String authorName;

  /// The user's overall rating for this place. This is a whole number, ranging from 1 to 5.
  final int rating;

  /// The time that the review was submitted in text, relative to the current time.
  final String relativeTimeDescription;

  /// The time that the review was submitted, measured in the number of seconds since since midnight, January 1, 1970 UTC.
  final int time;

  /// The URL to the user's Google Maps Local Guides profile, if available.
  final String? authorUrl;

  /// An IETF language code indicating the language of the returned review.
  /// This field contains the main language tag only, and not the secondary tag indicating country or region.
  /// For example, all the English reviews are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  /// This field is empty if there is only a rating with no review text.
  final String? language;

  /// An IETF language code indicating the original language of the review.
  /// If the review has been translated, then original_language != language.
  /// This field contains the main language tag only, and not the secondary tag indicating country or region.
  /// For example, all the English reviews are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  /// This field is empty if there is only a rating with no review text.
  final String? originalLanguage;

  /// The URL to the user's profile photo, if available.
  final String? profilePhotoUrl;

  /// The user's review. When reviewing a location with Google Places, text reviews are considered optional.
  /// Therefore, this field may be empty. Note that this field may include simple HTML markup.
  /// For example, the entity reference &amp; may represent an ampersand character.
  final String? text;

  /// A boolean value indicating if the review was translated from the original language it was written in.
  /// If a review has been translated, corresponding to a value of true, Google recommends that you indicate this to your users.
  /// For example, you can add the following string, “Translated by Google”, to the review.
  final bool? translated;

  const PlaceReview({
    required this.authorName,
    required this.rating,
    required this.relativeTimeDescription,
    required this.time,
    this.authorUrl,
    this.language,
    this.originalLanguage,
    this.profilePhotoUrl,
    this.text,
    this.translated,
  });

  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceReviewToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceReview &&
          runtimeType == other.runtimeType &&
          authorName == other.authorName &&
          rating == other.rating &&
          relativeTimeDescription == other.relativeTimeDescription &&
          time == other.time &&
          authorUrl == other.authorUrl &&
          language == other.language &&
          originalLanguage == other.originalLanguage &&
          profilePhotoUrl == other.profilePhotoUrl &&
          text == other.text &&
          translated == other.translated;

  @override
  int get hashCode =>
      authorName.hashCode ^
      rating.hashCode ^
      relativeTimeDescription.hashCode ^
      time.hashCode ^
      authorUrl.hashCode ^
      language.hashCode ^
      originalLanguage.hashCode ^
      profilePhotoUrl.hashCode ^
      text.hashCode ^
      translated.hashCode;
}
