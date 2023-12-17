import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_api/places/details/response/place.dart';
import 'package:google_maps_api/places/details/response/place_details_response.dart';
import 'package:google_maps_api/places/details/response/place_details_status.dart';
import 'package:google_maps_api/places/details/response/place_editorial_summary.dart';
import 'package:google_maps_api/places/details/response/place_opening_hours.dart';
import 'package:google_maps_api/places/details/response/place_opening_hours_period.dart';
import 'package:google_maps_api/places/details/response/place_opening_hours_period_detail.dart';
import 'package:google_maps_api/places/details/response/place_photo.dart';
import 'package:google_maps_api/places/details/response/place_review.dart';
import 'package:google_maps_api/places/details/response/place_special_day.dart';

import '../../mocks/mock_place_details_response.dart';

void main() {
  group("PlacedetailsResponse fromJson test", () {
    test("PlaceDetailsResponse fromJson", () {
      // Arrange
      const expectedPlaceDetailsResponse = placeDetailsResponse;

      // Act
      final result = PlaceDetailsResponse.fromJson(jsonPlaceDetailsResponse);

      // Assert
      expect(result, expectedPlaceDetailsResponse);
    });

    test("PlacePhoto fromJson", () {
      // Arrange
      const expectedPlacePhoto = PlacePhoto(
        height: 3024,
        htmlAttributions: [
          '<a href="https://maps.google.com/maps/contrib/117600448889234589608">Cynthia Wei</a>',
        ],
        photoReference:
            "Aap_uEC6jqtpflLS8GxQqPHBjlcwBf2sri0ZErk9q1ciHGZ6Zx5HBiiiEsPEO3emtB1PGyWbBQhgPL2r9CshoVlJEG4xzB71QMhGBTqqeaCNk1quO3vTTiP50aM1kmOaBQ-DF1ER7zpu6BQOEtnusKMul0m4KA45wfE3h6Xh2IxjLNzx-IiX",
        width: 4032,
      );

      // Act
      final result = PlacePhoto.fromJson({
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/117600448889234589608">Cynthia Wei</a>',
        ],
        "photo_reference":
            "Aap_uEC6jqtpflLS8GxQqPHBjlcwBf2sri0ZErk9q1ciHGZ6Zx5HBiiiEsPEO3emtB1PGyWbBQhgPL2r9CshoVlJEG4xzB71QMhGBTqqeaCNk1quO3vTTiP50aM1kmOaBQ-DF1ER7zpu6BQOEtnusKMul0m4KA45wfE3h6Xh2IxjLNzx-IiX",
        "width": 4032,
      });

      // Assert
      expect(result, expectedPlacePhoto);
    });

    test("PlaceReview fromJson", () {
      // Arrange
      const expectedPlaceReview = PlaceReview(
        authorName: "Luke Archibald",
        authorUrl:
            "https://www.google.com/maps/contrib/113389359827989670652/reviews",
        language: "en",
        profilePhotoUrl:
            "https://lh3.googleusercontent.com/a-/AOh14GhGGmTmvtD34HiRgwHdXVJUTzVbxpsk5_JnNKM5MA=s128-c0x00000000-cc-rp-mo",
        rating: 1,
        relativeTimeDescription: "a week ago",
        text:
            "Called regarding paid advertising google pages to the top of its site of a scam furniture website misleading and taking peoples money without ever sending a product - explained the situation,  explained I'd spoken to an ombudsman regarding it.  Listed ticket numbers etc.\n\nThey left the advertisement running.",
        time: 1652286798,
      );

      // Act
      final result = PlaceReview.fromJson({
        "author_name": "Luke Archibald",
        "author_url":
            "https://www.google.com/maps/contrib/113389359827989670652/reviews",
        "language": "en",
        "profile_photo_url":
            "https://lh3.googleusercontent.com/a-/AOh14GhGGmTmvtD34HiRgwHdXVJUTzVbxpsk5_JnNKM5MA=s128-c0x00000000-cc-rp-mo",
        "rating": 1,
        "relative_time_description": "a week ago",
        "text":
            "Called regarding paid advertising google pages to the top of its site of a scam furniture website misleading and taking peoples money without ever sending a product - explained the situation,  explained I'd spoken to an ombudsman regarding it.  Listed ticket numbers etc.\n\nThey left the advertisement running.",
        "time": 1652286798,
      });

      // Assert
      expect(result, expectedPlaceReview);
    });

    test("PlaceOpeningHoursPeriodDetail fromJson", () {
      // Arrange
      const expectedPlaceOpeningHoursPeriodDetail =
          PlaceOpeningHoursPeriodDetail(
        day: 0,
        time: "0000",
      );

      // Act
      final result = PlaceOpeningHoursPeriodDetail.fromJson({
        "day": 0,
        "time": "0000",
      });

      // Assert
      expect(result, expectedPlaceOpeningHoursPeriodDetail);
    });

    test("PlaceOpeningHoursPeriod fromJson", () {
      // Arrange
      const expectedPlaceOpeningHoursPeriod = PlaceOpeningHoursPeriod(
        close: PlaceOpeningHoursPeriodDetail(
          day: 0,
          time: "0000",
        ),
        open: PlaceOpeningHoursPeriodDetail(
          day: 0,
          time: "0000",
        ),
      );

      // Act
      final result = PlaceOpeningHoursPeriod.fromJson({
        "close": {"day": 0, "time": "0000"},
        "open": {"day": 0, "time": "0000"},
      });

      // Assert
      expect(result, expectedPlaceOpeningHoursPeriod);
    });

    test("PlaceOpeningHours fromJson", () {
      // Arrange
      const expectedPlaceOpeningHours = PlaceOpeningHours(
        openNow: true,
        periods: [
          PlaceOpeningHoursPeriod(
            close: PlaceOpeningHoursPeriodDetail(
              day: 0,
              time: "0000",
            ),
            open: PlaceOpeningHoursPeriodDetail(
              day: 0,
              time: "0000",
            ),
          ),
        ],
        weekdayText: [
          "Monday: Open 24 hours",
          "Tuesday: Open 24 hours",
          "Wednesday: Open 24 hours",
          "Thursday: Open 24 hours",
          "Friday: Open 24 hours",
          "Saturday: Open 24 hours",
          "Sunday: Open 24 hours",
        ],
      );

      // Act
      final result = PlaceOpeningHours.fromJson({
        "open_now": true,
        "periods": [
          {
            "close": {"day": 0, "time": "0000"},
            "open": {"day": 0, "time": "0000"},
          },
        ],
        "weekday_text": [
          "Monday: Open 24 hours",
          "Tuesday: Open 24 hours",
          "Wednesday: Open 24 hours",
          "Thursday: Open 24 hours",
          "Friday: Open 24 hours",
          "Saturday: Open 24 hours",
          "Sunday: Open 24 hours",
        ],
      });

      // Assert
      expect(result, expectedPlaceOpeningHours);
    });

    test("PlaceOpeningHoursPeroidDetails fromJson", () {
      // Arrange
      const expectedPlaceOpeningHoursPeriodDetails =
          PlaceOpeningHoursPeriodDetail(
        day: 0,
        time: "0000",
      );

      // Act
      final result = PlaceOpeningHoursPeriodDetail.fromJson(
        {"day": 0, "time": "0000"},
      );

      // Assert
      expect(result, expectedPlaceOpeningHoursPeriodDetails);
    });

    test("PlaceEditorialSummary fromJson", () {
      // Arrange
      const expectedPlaceEditorialSummary = PlaceEditorialSummary(
        language: "en",
        overview: "This is a test value",
      );

      // Act
      final result = PlaceEditorialSummary.fromJson({
        "language": "en",
        "overview": "This is a test value",
      });

      // Assert
      expect(result, expectedPlaceEditorialSummary);
    });

    test("Photos equality", () {
      // Arrange
      const expectedPlace = Place(photos: [
        PlacePhoto(
          height: 3024,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/117600448889234589608">Cynthia Wei</a>',
          ],
          photoReference:
              "Aap_uEC6jqtpflLS8GxQqPHBjlcwBf2sri0ZErk9q1ciHGZ6Zx5HBiiiEsPEO3emtB1PGyWbBQhgPL2r9CshoVlJEG4xzB71QMhGBTqqeaCNk1quO3vTTiP50aM1kmOaBQ-DF1ER7zpu6BQOEtnusKMul0m4KA45wfE3h6Xh2IxjLNzx-IiX",
          width: 4032,
        ),
        PlacePhoto(
          height: 3264,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/102493344958625549078">Heyang Li</a>',
          ],
          photoReference:
              "Aap_uECyRjHhOQgGaKTW6Z3ZfTEaDhNc44m0F6GrNSFIMffixwI5xqD35QhecdzVY-FUuDtVE1huu8-2HkxgI9Gwvy6W18fU-_E3UUkdSFBQqGK8_slKlT8BZZc66sTX53IEcTDrZfT-E5_YUBYBOm13yxOTOfWfEDABhaxCGC5Hu_XYh0fI",
          width: 4912,
        ),
        PlacePhoto(
          height: 3036,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/104829437842034782235">Anna Linetsky</a>',
          ],
          photoReference:
              "Aap_uEAumTzSdhRHDutPAj6wVPSZZmBV-brI6TPFwI0tcQlbSR74z44mUPr4aXMQKck_AzHaKmbfR3P2c1qsu45i1RQPHrcpIXxrA78FmDjCdWYYZWUnFozdcmEj9OQ_V0G08adpKivMKZyeaQ1NuwRy9GhSopeKpzkzkFZG5vXMYPPSgpa1",
          width: 4048,
        ),
        PlacePhoto(
          height: 4016,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/107755640736541028674">Jonah Dell</a>',
          ],
          photoReference:
              "Aap_uECC7cSbDkh-TdmXr6m5d5pgVXJmvXg8dF2jzhL0b0Ko4CtnVll6-tIvdz7vhbCsd3hl2u9EgZ4Y30FBxKmFcimfeYUgW2XJyv8JY5IYGuXsKkCLqpV3QH9dIGwoUv2uX0eosDsUsTN2DOlyOasUgVxcYqzIzEmrL5ofIssThQWZeozD",
          width: 6016,
        ),
        PlacePhoto(
          height: 3024,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/115886271727815775491">Anthony Huynh</a>',
          ],
          photoReference:
              "Aap_uEDTdw58CglFmZZAR9iZ05x3y2oK9r5_dRqKWnbZKSS9gs6gp9AeBa1QDvBL6dzZyQAZfN8H2Eppu6y4NBaPOp-GkulZYiKRM7Yww8sUEv-8dmcq35Tx38pe4LEX2wIicFkQHedRgMc0FfV9aFtgosQ5ps5-HCjJSApg8eLGyuxxqPm9",
          width: 4032,
        ),
        PlacePhoto(
          height: 3024,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/102939237947063969663">Jasen Baker</a>',
          ],
          photoReference:
              "Aap_uEAGqslqZPhZUk0T2Y6l7mkCYnY7JN9li4g5NkZsE0N4Cdy7_cZ-fZWyV02VhpQR4Ph4fLUL6_WTXrlGMXXzUJXUcSmSTs2d_Dzf3Q_A1y07Dm-vtv7pS3JXsWyrWETGIoT1pIj81PPdUc1vlR2i3GFMWAbx9rCC472ZJclY8JlvMg-x",
          width: 4032,
        ),
        PlacePhoto(
          height: 3024,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
          ],
          photoReference:
              "Aap_uEBaGxeN90YFjD-AUjxZqM44kpMcICKKBBhb0RQQS7DHHFaay8RRAwjWsAt8GEmmB5QnxrbQWHU3TwhVXXHP0m-YNp9Ds3ihpiFan0moNv4QB7kern5cfjWhhrWe8B0dz_vYvmPssJE24P-24YfWWHubOo0L2MjQyueZfDv57N_RvDZk",
          width: 4032,
        ),
        PlacePhoto(
          height: 1515,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/112343109286948028063">Andrew W</a>',
          ],
          photoReference:
              "Aap_uEBDzJlmTeNUreMop6_hkC1HKTCRLyPs5fikJi58qCejtkWp5PIM6vzNN3HErkSWUwnamTr_WLyT7jXMAIdByR-hx8dG-OHjj5JxzmcPvuT_VeVLmdSbNPeIlpmp6EUcPOhaVrhEKojSd44QXkl0za29eZ0oj1KDOnAsGxmhanDFW7lI",
          width: 2048,
        ),
        PlacePhoto(
          height: 3024,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
          ],
          photoReference:
              "Aap_uEBvYFpzCDQzvQ0kdBxxB70lTkLbTM0yH3xF-BCHsb7DQ63cuWnutvwv8oVLDSbA14_kns3WVlEInTyy2elvmH5lzQteb6zzRu3exkwE65_55TgJqdLO7RYYiPFliWk4ocszn9nn5ELv5uP2BQmqr9QET5vwgxR-0eshyVmcdM42jb39",
          width: 4032,
        ),
        PlacePhoto(
          height: 4032,
          htmlAttributions: [
            '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
          ],
          photoReference:
              "Aap_uECQynuD_EnSnbz8sJQ6-B6uR-j2tuu4Z1tuGUjq8xnxFDk-W8OdeLzWBX8suNKTCsPlkzTqC22BXf_hX33XclGPL4SS9xnPmHcMrLoUl0H_xHYevFvT17Hgw5DZpSyVmLvDvxzzJ1rsZTh55QwopmAty083a1r1ZIfL32iXh_q8FUas",
          width: 3024,
        ),
      ]);

      // Act
      final results = Place.fromJson(jsonPlace).photos;

      // Assert
      expect(results, expectedPlace.photos);
    });

    test("Place fromJson", () {
      // Arrange
      const expectedPlace = mockPlace;

      // Act
      final result = Place.fromJson(jsonPlace);

      // Assert
      expect(result, expectedPlace);
    });

    test("PlaceSpecialDay fromJson", () {
      // Arrange
      const expectedPlaceSpecialDay = PlaceSpecialDay(
        date: "2021-10-10",
        exceptionalHours: true,
      );

      // Act
      final result = PlaceSpecialDay.fromJson(
        {
          "date": "2021-10-10",
          "exceptional_hours": true,
        },
      );

      // Assert
      expect(result, expectedPlaceSpecialDay);
    });
  });

  group("PlaceDetailsResponse status test", () {
    test('should return correct message for each status', () {
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.OK),
          "API request was successful");
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.ZERO_RESULTS),
          "The referenced location, place_id, was valid but no longer refers to a valid result. This may occur if the establishment is no longer in business.");
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.NOT_FOUND),
          "The referenced location, place_id, was not found in the Places database.");
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.INVALID_REQUEST),
          "API request was malformed");
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.OVER_QUERY_LIMIT),
          "Query limit exceeded. Check billing and usage limits");
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.REQUEST_DENIED),
          "Request was denied. Check API key and permissions");
      expect(handlePlacesDetailsStatus(PlacesDetailsStatus.UNKNOWN_ERROR),
          "An unknown error occurred");
    });
  });

  group("place details hascodes test", () {
    test("PlaceDetails hashcode", () {
      // Act
      final result = PlaceDetailsResponse.fromJson(
        jsonPlaceDetailsResponse,
      );

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("Place hashcode", () {
      // Act
      final result = Place.fromJson(
        jsonPlace,
      );

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlacePhoto hashcode", () {
      // Act
      final result = PlacePhoto.fromJson({
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/117600448889234589608">Cynthia Wei</a>',
        ],
        "photo_reference":
            "Aap_uEC6jqtpflLS8GxQqPHBjlcwBf2sri0ZErk9q1ciHGZ6Zx5HBiiiEsPEO3emtB1PGyWbBQhgPL2r9CshoVlJEG4xzB71QMhGBTqqeaCNk1quO3vTTiP50aM1kmOaBQ-DF1ER7zpu6BQOEtnusKMul0m4KA45wfE3h6Xh2IxjLNzx-IiX",
        "width": 4032,
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceReview hashcode", () {
      // Act
      final result = PlaceReview.fromJson({
        "author_name": "Luke Archibald",
        "author_url":
            "https://www.google.com/maps/contrib/113389359827989670652/reviews",
        "language": "en",
        "profile_photo_url":
            "https://lh3.googleusercontent.com/a-/AOh14GhGGmTmvtD34HiRgwHdXVJUTzVbxpsk5_JnNKM5MA=s128-c0x00000000-cc-rp-mo",
        "rating": 1,
        "relative_time_description": "a week ago",
        "text":
            "Called regarding paid advertising google pages to the top of its site of a scam furniture website misleading and taking peoples money without ever sending a product - explained the situation,  explained I'd spoken to an ombudsman regarding it.  Listed ticket numbers etc.\n\nThey left the advertisement running.",
        "time": 1652286798,
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceOpeningHours hashcode", () {
      // Act
      final result = PlaceOpeningHours.fromJson({
        "open_now": true,
        "periods": [
          {
            "close": {"day": 0, "time": "0000"},
            "open": {"day": 0, "time": "0000"},
          },
        ],
        "weekday_text": [
          "Monday: Open 24 hours",
          "Tuesday: Open 24 hours",
          "Wednesday: Open 24 hours",
          "Thursday: Open 24 hours",
          "Friday: Open 24 hours",
          "Saturday: Open 24 hours",
          "Sunday: Open 24 hours",
        ],
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceOpeningHoursPeriod hashcode", () {
      // Act
      final result = PlaceOpeningHoursPeriod.fromJson({
        "close": {"day": 0, "time": "0000"},
        "open": {"day": 0, "time": "0000"},
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceOpeningHoursPeriodDetail hashcode", () {
      // Act
      final result = PlaceOpeningHoursPeriodDetail.fromJson({
        "day": 0,
        "time": "0000",
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceEditorialSummary hashcode", () {
      // Act
      final result = PlaceEditorialSummary.fromJson({
        "language": "en",
        "overview": "This is a test value",
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceDetailsResponse hashcode", () {
      // Act
      final result = PlaceDetailsResponse.fromJson(
        jsonPlaceDetailsResponse,
      );

      // Assert
      expect(result.hashCode, isNotNull);
    });

    test("PlaceSpecialDay hashcode", () {
      // Act
      final result = PlaceSpecialDay.fromJson({
        "close": {"day": 0, "time": "0000"},
        "open": {"day": 0, "time": "0000"},
      });

      // Assert
      expect(result.hashCode, isNotNull);
    });
  });
}
