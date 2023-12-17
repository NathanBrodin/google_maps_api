// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) => Place(
      addressComponents: (json['address_components'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      adrAddress: json['adr_address'] as String?,
      businessStatus: json['business_status'] as String?,
      curbsidePickup: json['curbside_pickup'] as bool?,
      currentOpeningHours: json['current_opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['current_opening_hours'] as Map<String, dynamic>),
      delivery: json['delivery'] as bool?,
      dineIn: json['dine_in'] as bool?,
      editorialSummary: json['editorial_summary'] == null
          ? null
          : PlaceEditorialSummary.fromJson(
              json['editorial_summary'] as Map<String, dynamic>),
      formattedAddress: json['formatted_address'] as String?,
      formattedPhoneNumber: json['formatted_phone_number'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      icon: json['icon'] as String?,
      iconBackgroundColor: json['icon_background_color'] as String?,
      iconMaskBaseUri: json['icon_mask_base_uri'] as String?,
      internationalPhoneNumber: json['international_phone_number'] as String?,
      name: json['name'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => PlacePhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['place_id'] as String?,
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(json['plus_code'] as Map<String, dynamic>),
      priceLevel: json['price_level'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      reservable: json['reservable'] as bool?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => PlaceReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondaryOpeningHours: (json['secondary_opening_hours'] as List<dynamic>?)
          ?.map((e) => PlaceOpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
      servesBeer: json['serves_beer'] as bool?,
      servesBreakfast: json['serves_breakfast'] as bool?,
      servesBrunch: json['serves_brunch'] as bool?,
      servesDinner: json['serves_dinner'] as bool?,
      servesLunch: json['serves_lunch'] as bool?,
      servesVegetarianFood: json['serves_vegetarian_food'] as bool?,
      servesWine: json['serves_wine'] as bool?,
      takeout: json['takeout'] as bool?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      userRatingsTotal: json['user_ratings_total'] as int?,
      utcOffset: json['utc_offset'] as int?,
      vicinity: json['vicinity'] as String?,
      website: json['website'] as String?,
      wheelchairAccessibleEntrance:
          json['wheelchair_accessible_entrance'] as bool?,
    );

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'address_components':
          instance.addressComponents?.map((e) => e.toJson()).toList(),
      'adr_address': instance.adrAddress,
      'business_status': instance.businessStatus,
      'curbside_pickup': instance.curbsidePickup,
      'current_opening_hours': instance.currentOpeningHours?.toJson(),
      'delivery': instance.delivery,
      'dine_in': instance.dineIn,
      'editorial_summary': instance.editorialSummary?.toJson(),
      'formatted_address': instance.formattedAddress,
      'formatted_phone_number': instance.formattedPhoneNumber,
      'geometry': instance.geometry?.toJson(),
      'icon': instance.icon,
      'icon_background_color': instance.iconBackgroundColor,
      'icon_mask_base_uri': instance.iconMaskBaseUri,
      'international_phone_number': instance.internationalPhoneNumber,
      'name': instance.name,
      'opening_hours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'place_id': instance.placeId,
      'plus_code': instance.plusCode?.toJson(),
      'price_level': instance.priceLevel,
      'rating': instance.rating,
      'reservable': instance.reservable,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'secondary_opening_hours':
          instance.secondaryOpeningHours?.map((e) => e.toJson()).toList(),
      'serves_beer': instance.servesBeer,
      'serves_breakfast': instance.servesBreakfast,
      'serves_brunch': instance.servesBrunch,
      'serves_dinner': instance.servesDinner,
      'serves_lunch': instance.servesLunch,
      'serves_vegetarian_food': instance.servesVegetarianFood,
      'serves_wine': instance.servesWine,
      'takeout': instance.takeout,
      'types': instance.types,
      'url': instance.url,
      'user_ratings_total': instance.userRatingsTotal,
      'utc_offset': instance.utcOffset,
      'vicinity': instance.vicinity,
      'website': instance.website,
      'wheelchair_accessible_entrance': instance.wheelchairAccessibleEntrance,
    };
