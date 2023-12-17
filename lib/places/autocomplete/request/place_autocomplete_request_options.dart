import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceAutocompleteRequestOptions {
  /// A grouping of countries to which you would like to restrict your results.
  List<String>? components;

  /// The language in which to return results.
  String? language;

  /// The point around which to retrieve place information. Radius must be specified.
  LatLng? location;

  /// The position, in the input term, of the last character that the service uses to match predictions.
  int? offset;

  /// The origin point from which to calculate straight-line distance to the destination (returned as distance_meters).
  LatLng? origin;

  /// Defines the distance (in meters) within which to return place results.
  double? radius;

  /// The region code, specified as a ccTLD ("top-level domain") two-character value.
  String? region;

  /// A random string which identifies an autocomplete session for billing purposes.
  String? sessiontoken;

  /// Returns only those places that are strictly within the region defined by [location] and [radius].
  bool? strictbounds;

  /// Restrict results from a Place Autocomplete request to be of a certain type or a type collection, as listed in Place Types.
  List<String>? types;

  PlaceAutocompleteRequestOptions({
    this.components,
    this.language,
    this.location,
    this.offset,
    this.origin,
    this.radius,
    this.region,
    this.sessiontoken,
    this.strictbounds,
    this.types,
  }) {
    if (offset != null && offset! < 0) {
      throw ArgumentError('Offset cannot be negative');
    }
    if (radius != null && radius! <= 0) {
      throw ArgumentError('Radius must be greater than zero');
    }
    if (components != null && components!.length > 5) {
      throw ArgumentError('Components cannot contain more than 5 countries');
    }
    if (types != null && types!.length > 5) {
      throw ArgumentError('Types cannot contain more than 5 types');
    }
    if (location != null && radius == null) {
      throw ArgumentError(
          'Radius must be specified when location is specified');
    }
  }

  @override
  String toString() {
    final String formattedComponents = formatComponents(components);

    final String formattedLanguage =
        language != null ? "&language=$language" : '';

    final String formattedLocation = location != null
        ? "&location=${location?.latitude}%${location?.longitude}"
        : '';

    final String formattedOffset = offset != null ? "&offset=$offset" : '';

    final String formattedOrigin = origin != null
        ? "&origin=${origin?.latitude}%${origin?.longitude}"
        : '';

    final String formattedRadius = radius != null ? "&radius=$radius" : '';

    final String formattedRegion = region != null ? "&region=$region" : '';

    final String formattedSessiontoken =
        sessiontoken != null ? "&sessiontoken=$sessiontoken" : '';

    final String formattedStrictbounds =
        strictbounds != null ? "&strictbounds=$strictbounds" : '';

    final String formattedTypes = formatTypes(types);

    return "$formattedComponents$formattedLanguage$formattedLocation$formattedOffset$formattedOrigin$formattedRadius$formattedRegion$formattedSessiontoken$formattedStrictbounds$formattedTypes";
  }

  String formatComponents(List<String>? components) {
    if (components == null || components.isEmpty) {
      return "";
    }
    return "&components=country:${components.join('|country:')}";
  }

  String formatTypes(List<String>? types) {
    if (types == null || types.isEmpty) {
      return "";
    }
    return "&types=${types.join('|')}";
  }
}
