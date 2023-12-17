/// https://developers.google.com/maps/documentation/places/web-service/details#optional-parameters
// ignore_for_file: constant_identifier_names

class PlaceDetailsRequestOptions {
  /// Use the fields parameter to specify a list of place data types to return.
  ///
  /// For example: ``fields=['formatted_address', 'name', 'geometry']``
  ///
  /// More details [here](https://developers.google.com/maps/documentation/places/web-service/details#fields)
  final List<String>? fields;

  /// The language in which to return results.
  final String? language;

  /// The region code, specified as a ccTLD ("top-level domain") two-character value.
  final String? region;

  /// Specify true to disable translation of reviews;
  /// Specify false to enable translation of reviews.
  ///
  /// Reviews are returned in their original language.
  final bool? reviewsNoTranslations;

  /// The sorting method to use when returning reviews. Can be set to most_relevant (default) or newest.
  final ReviewsSort? reviewsSort;

  /// A random string which identifies an autocomplete session for billing purposes.
  final String? sessiontoken;

  PlaceDetailsRequestOptions({
    this.fields,
    this.language,
    this.region,
    this.reviewsNoTranslations,
    this.reviewsSort,
    this.sessiontoken,
  });

  @override
  String toString() {
    String formattedFields = fields != null ? formatFields(fields) : '';
    String formattedLanguage = language != null ? "&language=$language" : '';
    String formattedRegion = region != null ? "&region=$region" : '';
    String formattedReviewsNoTranslations =
        reviewsNoTranslations != null ? "&reviews=$reviewsNoTranslations" : '';
    String formattedReviewsSort =
        reviewsSort != null ? "&sort=$reviewsSort" : '';
    String formattedSessiontoken =
        sessiontoken != null ? "&sessiontoken=$sessiontoken" : '';

    return "$formattedFields$formattedLanguage$formattedRegion$formattedReviewsNoTranslations$formattedReviewsSort$formattedSessiontoken";
  }

  String formatFields(List<String>? fields) {
    if (fields == null || fields.isEmpty) {
      return "";
    }
    return "&fields=${fields.join(',')}";
  }
}

enum ReviewsSort {
  most_relevant,
  newest,
}
