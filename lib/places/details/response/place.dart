import 'package:flutter/foundation.dart';
import 'package:google_maps_api_flutter/generic/address_component.dart';
import 'package:google_maps_api_flutter/generic/geometry.dart';
import 'package:google_maps_api_flutter/places/details/response/place_editorial_summary.dart';
import 'package:google_maps_api_flutter/places/details/response/place_opening_hours.dart';
import 'package:google_maps_api_flutter/places/details/response/place_photo.dart';
import 'package:google_maps_api_flutter/places/details/response/place_review.dart';
import 'package:google_maps_api_flutter/generic/plus_code.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Place {
  /// An array containing the separate components applicable to this address.
  final List<AddressComponent>? addressComponents;

  /// A representation of the place's address in the adr microformat.
  final String? adrAddress;

  /// Indicates the operational status of the place, if it is a business. If no data exists, business_status is not returned.
  /// The allowed values include: OPERATIONAL, CLOSED_TEMPORARILY, and CLOSED_PERMANENTLY
  final String? businessStatus;

  /// Specifies if the business supports curbside pickup.
  final bool? curbsidePickup;

  /// Contains the hours of operation for the next seven days (including today).
  /// The time period starts at midnight on the date of the request and ends at 11:59 pm six days later.
  final PlaceOpeningHours? currentOpeningHours;

  /// Specifies if the business supports delivery.
  final bool? delivery;

  /// Specifies if the business supports indoor or outdoor seating options.
  final bool? dineIn;

  /// Contains a summary of the place. A summary is comprised of a textual overview,
  /// and also includes the language code for these if applicable.
  /// Summary text must be presented as-is and can not be modified or altered.
  final PlaceEditorialSummary? editorialSummary;

  /// A string containing the human-readable address of this place.
  ///
  /// Do not parse the formatted address programmatically.
  /// Instead you should use the individual address components, which the API response includes in addition to the formatted address field.
  final String? formattedAddress;

  /// Contains the place's phone number in its local format.
  final String? formattedPhoneNumber;

  /// Contains the location and viewport for the location.
  final Geometry? geometry;

  /// Contains the URL of a suggested icon which may be displayed to the user when indicating this result on a map.
  final String? icon;

  /// Contains the default HEX color code for the place's category.
  final String? iconBackgroundColor;

  /// Contains the URL of a recommended icon, minus the .svg or .png file type extension.
  final String? iconMaskBaseUri;

  /// Contains the place's phone number in international format. International format includes the country code, and is prefixed with the plus, +, sign.
  final String? internationalPhoneNumber;

  /// Contains the human-readable name for the returned result. For establishment results, this is usually the canonicalized business name.
  final String? name;

  /// Contains the regular hours of operation.
  final PlaceOpeningHours? openingHours;

  /// An array of photo objects, each containing a reference to an image.
  /// A request may return up to ten photos. More information about place photos
  /// and how you can use the images in your application can be found in the Place Photos documentation.
  final List<PlacePhoto>? photos;

  /// A textual identifier that uniquely identifies a place.
  final String? placeId;

  /// An encoded location reference, derived from latitude and longitude coordinates,
  /// that represents an area: 1/8000th of a degree by 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
  ///
  /// Plus codes can be used as a replacement for street addresses in places where they do not exist
  final PlusCode? plusCode;

  /// The price level of the place, on a scale of 0 to 4.
  /// The exact amount indicated by a specific value will vary from region to region.
  /// Price levels are interpreted as follows:
  ///
  /// - 0 Free
  /// - 1 Inexpensive
  /// - 2 Moderate
  /// - 3 Expensive
  /// - 4 Very Expensive
  final int? priceLevel;

  /// Contains the place's rating, from 1.0 to 5.0, based on aggregated user reviews.
  final double? rating;

  /// Specifies if the place supports reservations.
  final bool? reservable;

  /// A array of up to five reviews.
  /// By default, the reviews are sorted in order of relevance.
  /// Use the reviews_sort request parameter to control sorting.
  /// For most_relevant (default), reviews are sorted by relevance;
  /// the service will bias the results to return reviews originally written in the preferred language.
  /// For newest, reviews are sorted in chronological order; the preferred language does not affect the sort order.
  /// Google recommends indicating to users whether results are ordered by most_relevant or newest.
  final List<PlaceReview>? reviews;

  /// Contains an array of entries for the next seven days including information about secondary hours of a business.
  /// Secondary hours are different from a business's main hours.
  /// For example, a restaurant can specify drive through hours or delivery hours as its secondary hours.
  /// This field populates the type subfield, which draws from a predefined list of opening hours types
  /// (such as DRIVE_THROUGH, PICKUP, or TAKEOUT) based on the types of the place.
  /// This field includes the special_days subfield of all hours, set for dates that have exceptional hours.
  final List<PlaceOpeningHours>? secondaryOpeningHours;

  /// Specifies if the place serves beer.
  final bool? servesBeer;

  /// Specifies if the place serves breakfast.
  final bool? servesBreakfast;

  /// Specifies if the place serves brunch.
  final bool? servesBrunch;

  /// Specifies if the place serves dinner.
  final bool? servesDinner;

  /// Specifies if the place serves lunch.
  final bool? servesLunch;

  /// Specifies if the place serves vegetarian food.
  final bool? servesVegetarianFood;

  /// Specifies if the place serves wine.
  final bool? servesWine;

  /// Specifies if the business supports takeout.
  final bool? takeout;

  /// Contains an array of feature types describing the given result.
  /// See the list of [supported types](https://developers.google.com/maps/documentation/places/web-service/supported_types#table2).
  final List<String>? types;

  /// Contains the URL of the official Google page for this place.
  /// This will be the Google-owned page that contains the best available information about the place.
  /// Applications must link to or embed this page on any screen that shows detailed results about the place to the user.
  final String? url;

  /// The total number of reviews, with or without text, for this place.
  final int? userRatingsTotal;

  /// Contains the number of minutes this place’s current timezone is offset from UTC.
  /// For example, for places in Sydney, Australia during daylight saving time this would be 660 (+11 hours from UTC),
  /// and for places in California outside of daylight saving time this would be -480 (-8 hours from UTC).
  final int? utcOffset;

  /// For establishment (types:["establishment", ...]) results only, the vicinity field contains a simplified address for the place,
  /// including the street name, street number, and locality, but not the province/state, postal code, or country.
  ///
  /// For all other results, the vicinity field contains the name of the narrowest political (types:["political", ...])
  /// feature that is present in the address of the result.
  ///
  /// This content is meant to be read as-is. Do not programmatically parse the formatted address.
  final String? vicinity;

  /// The authoritative website for this place, such as a business' homepage.
  final String? website;

  /// Specifies if the place has an entrance that is wheelchair-accessible.
  final bool? wheelchairAccessibleEntrance;

  const Place({
    this.addressComponents,
    this.adrAddress,
    this.businessStatus,
    this.curbsidePickup,
    this.currentOpeningHours,
    this.delivery,
    this.dineIn,
    this.editorialSummary,
    this.formattedAddress,
    this.formattedPhoneNumber,
    this.geometry,
    this.icon,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.internationalPhoneNumber,
    this.name,
    this.openingHours,
    this.photos,
    this.placeId,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.reservable,
    this.reviews,
    this.secondaryOpeningHours,
    this.servesBeer,
    this.servesBreakfast,
    this.servesBrunch,
    this.servesDinner,
    this.servesLunch,
    this.servesVegetarianFood,
    this.servesWine,
    this.takeout,
    this.types,
    this.url,
    this.userRatingsTotal,
    this.utcOffset,
    this.vicinity,
    this.website,
    this.wheelchairAccessibleEntrance,
  });

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Place &&
          runtimeType == other.runtimeType &&
          listEquals(addressComponents, other.addressComponents) &&
          adrAddress == other.adrAddress &&
          businessStatus == other.businessStatus &&
          curbsidePickup == other.curbsidePickup &&
          currentOpeningHours == other.currentOpeningHours &&
          delivery == other.delivery &&
          dineIn == other.dineIn &&
          editorialSummary == other.editorialSummary &&
          formattedAddress == other.formattedAddress &&
          formattedPhoneNumber == other.formattedPhoneNumber &&
          geometry == other.geometry &&
          icon == other.icon &&
          iconBackgroundColor == other.iconBackgroundColor &&
          iconMaskBaseUri == other.iconMaskBaseUri &&
          internationalPhoneNumber == other.internationalPhoneNumber &&
          name == other.name &&
          openingHours == other.openingHours &&
          listEquals(photos, other.photos) &&
          placeId == other.placeId &&
          plusCode == other.plusCode &&
          priceLevel == other.priceLevel &&
          rating == other.rating &&
          reservable == other.reservable &&
          listEquals(reviews, other.reviews) &&
          listEquals(secondaryOpeningHours, other.secondaryOpeningHours) &&
          servesBeer == other.servesBeer &&
          servesBreakfast == other.servesBreakfast &&
          servesBrunch == other.servesBrunch &&
          servesDinner == other.servesDinner &&
          servesLunch == other.servesLunch &&
          servesVegetarianFood == other.servesVegetarianFood &&
          servesWine == other.servesWine &&
          takeout == other.takeout &&
          listEquals(types, other.types) &&
          url == other.url &&
          userRatingsTotal == other.userRatingsTotal &&
          utcOffset == other.utcOffset &&
          vicinity == other.vicinity &&
          website == other.website &&
          wheelchairAccessibleEntrance == other.wheelchairAccessibleEntrance;

  @override
  int get hashCode =>
      addressComponents.hashCode ^
      adrAddress.hashCode ^
      businessStatus.hashCode ^
      curbsidePickup.hashCode ^
      currentOpeningHours.hashCode ^
      delivery.hashCode ^
      dineIn.hashCode ^
      editorialSummary.hashCode ^
      formattedAddress.hashCode ^
      formattedPhoneNumber.hashCode ^
      geometry.hashCode ^
      icon.hashCode ^
      iconBackgroundColor.hashCode ^
      iconMaskBaseUri.hashCode ^
      internationalPhoneNumber.hashCode ^
      name.hashCode ^
      openingHours.hashCode ^
      photos.hashCode ^
      placeId.hashCode ^
      plusCode.hashCode ^
      priceLevel.hashCode ^
      rating.hashCode ^
      reservable.hashCode ^
      reviews.hashCode ^
      secondaryOpeningHours.hashCode ^
      servesBeer.hashCode ^
      servesBreakfast.hashCode ^
      servesBrunch.hashCode ^
      servesDinner.hashCode ^
      servesLunch.hashCode ^
      servesVegetarianFood.hashCode ^
      servesWine.hashCode ^
      takeout.hashCode ^
      types.hashCode ^
      url.hashCode ^
      userRatingsTotal.hashCode ^
      utcOffset.hashCode ^
      vicinity.hashCode ^
      website.hashCode ^
      wheelchairAccessibleEntrance.hashCode;
}
