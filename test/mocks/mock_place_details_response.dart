import 'package:google_maps_api_flutter/generic/address_component.dart';
import 'package:google_maps_api_flutter/generic/bounds.dart';
import 'package:google_maps_api_flutter/generic/geometry.dart';
import 'package:google_maps_api_flutter/generic/plus_code.dart';
import 'package:google_maps_api_flutter/places/details/response/place.dart';
import 'package:google_maps_api_flutter/places/details/response/place_details_response.dart';
import 'package:google_maps_api_flutter/places/details/response/place_details_status.dart';
import 'package:google_maps_api_flutter/places/details/response/place_opening_hours.dart';
import 'package:google_maps_api_flutter/places/details/response/place_opening_hours_period.dart';
import 'package:google_maps_api_flutter/places/details/response/place_opening_hours_period_detail.dart';
import 'package:google_maps_api_flutter/places/details/response/place_photo.dart';
import 'package:google_maps_api_flutter/places/details/response/place_review.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const jsonPlaceDetailsResponse = {
  "html_attributions": [],
  "result": {
    "address_components": [
      {
        "long_name": "48",
        "short_name": "48",
        "types": ["street_number"]
      },
      {
        "long_name": "Pirrama Road",
        "short_name": "Pirrama Rd",
        "types": ["route"],
      },
      {
        "long_name": "Pyrmont",
        "short_name": "Pyrmont",
        "types": ["locality", "political"],
      },
      {
        "long_name": "City of Sydney",
        "short_name": "City of Sydney",
        "types": ["administrative_area_level_2", "political"],
      },
      {
        "long_name": "New South Wales",
        "short_name": "NSW",
        "types": ["administrative_area_level_1", "political"],
      },
      {
        "long_name": "Australia",
        "short_name": "AU",
        "types": ["country", "political"],
      },
      {
        "long_name": "2009",
        "short_name": "2009",
        "types": ["postal_code"],
      },
    ],
    "adr_address":
        '<span class="street-address">48 Pirrama Rd</span>, <span class="locality">Pyrmont</span> <span class="region">NSW</span> <span class="postal-code">2009</span>, <span class="country-name">Australia</span>',
    "business_status": "OPERATIONAL",
    "formatted_address": "48 Pirrama Rd, Pyrmont NSW 2009, Australia",
    "formatted_phone_number": "(02) 9374 4000",
    "geometry": {
      "location": {"lat": -33.866489, "lng": 151.1958561},
      "viewport": {
        "northeast": {"lat": -33.8655112697085, "lng": 151.1971156302915},
        "southwest": {"lat": -33.86820923029149, "lng": 151.1944176697085},
      },
    },
    "icon":
        "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
    "icon_background_color": "#7B9EB0",
    "icon_mask_base_uri":
        "https://maps.gstatic.com/mapfiles/place_api/icons/v2/generic_pinlet",
    "international_phone_number": "+61 2 9374 4000",
    "name": "Google Workplace 6",
    "opening_hours": {
      "open_now": false,
      "periods": [
        {
          "close": {"day": 1, "time": "1700"},
          "open": {"day": 1, "time": "0900"},
        },
        {
          "close": {"day": 2, "time": "1700"},
          "open": {"day": 2, "time": "0900"},
        },
        {
          "close": {"day": 3, "time": "1700"},
          "open": {"day": 3, "time": "0900"},
        },
        {
          "close": {"day": 4, "time": "1700"},
          "open": {"day": 4, "time": "0900"},
        },
        {
          "close": {"day": 5, "time": "1700"},
          "open": {"day": 5, "time": "0900"},
        },
      ],
      "weekday_text": [
        "Monday: 9:00 AM - 5:00 PM",
        "Tuesday: 9:00 AM - 5:00 PM",
        "Wednesday: 9:00 AM - 5:00 PM",
        "Thursday: 9:00 AM - 5:00 PM",
        "Friday: 9:00 AM - 5:00 PM",
        "Saturday: Closed",
        "Sunday: Closed",
      ],
    },
    "photos": [
      {
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/117600448889234589608">Cynthia Wei</a>',
        ],
        "photo_reference":
            "Aap_uEC6jqtpflLS8GxQqPHBjlcwBf2sri0ZErk9q1ciHGZ6Zx5HBiiiEsPEO3emtB1PGyWbBQhgPL2r9CshoVlJEG4xzB71QMhGBTqqeaCNk1quO3vTTiP50aM1kmOaBQ-DF1ER7zpu6BQOEtnusKMul0m4KA45wfE3h6Xh2IxjLNzx-IiX",
        "width": 4032,
      },
      {
        "height": 3264,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/102493344958625549078">Heyang Li</a>',
        ],
        "photo_reference":
            "Aap_uECyRjHhOQgGaKTW6Z3ZfTEaDhNc44m0F6GrNSFIMffixwI5xqD35QhecdzVY-FUuDtVE1huu8-2HkxgI9Gwvy6W18fU-_E3UUkdSFBQqGK8_slKlT8BZZc66sTX53IEcTDrZfT-E5_YUBYBOm13yxOTOfWfEDABhaxCGC5Hu_XYh0fI",
        "width": 4912,
      },
      {
        "height": 3036,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/104829437842034782235">Anna Linetsky</a>',
        ],
        "photo_reference":
            "Aap_uEAumTzSdhRHDutPAj6wVPSZZmBV-brI6TPFwI0tcQlbSR74z44mUPr4aXMQKck_AzHaKmbfR3P2c1qsu45i1RQPHrcpIXxrA78FmDjCdWYYZWUnFozdcmEj9OQ_V0G08adpKivMKZyeaQ1NuwRy9GhSopeKpzkzkFZG5vXMYPPSgpa1",
        "width": 4048,
      },
      {
        "height": 4016,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/107755640736541028674">Jonah Dell</a>',
        ],
        "photo_reference":
            "Aap_uECC7cSbDkh-TdmXr6m5d5pgVXJmvXg8dF2jzhL0b0Ko4CtnVll6-tIvdz7vhbCsd3hl2u9EgZ4Y30FBxKmFcimfeYUgW2XJyv8JY5IYGuXsKkCLqpV3QH9dIGwoUv2uX0eosDsUsTN2DOlyOasUgVxcYqzIzEmrL5ofIssThQWZeozD",
        "width": 6016,
      },
      {
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/115886271727815775491">Anthony Huynh</a>',
        ],
        "photo_reference":
            "Aap_uEDTdw58CglFmZZAR9iZ05x3y2oK9r5_dRqKWnbZKSS9gs6gp9AeBa1QDvBL6dzZyQAZfN8H2Eppu6y4NBaPOp-GkulZYiKRM7Yww8sUEv-8dmcq35Tx38pe4LEX2wIicFkQHedRgMc0FfV9aFtgosQ5ps5-HCjJSApg8eLGyuxxqPm9",
        "width": 4032,
      },
      {
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/102939237947063969663">Jasen Baker</a>',
        ],
        "photo_reference":
            "Aap_uEAGqslqZPhZUk0T2Y6l7mkCYnY7JN9li4g5NkZsE0N4Cdy7_cZ-fZWyV02VhpQR4Ph4fLUL6_WTXrlGMXXzUJXUcSmSTs2d_Dzf3Q_A1y07Dm-vtv7pS3JXsWyrWETGIoT1pIj81PPdUc1vlR2i3GFMWAbx9rCC472ZJclY8JlvMg-x",
        "width": 4032,
      },
      {
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
        ],
        "photo_reference":
            "Aap_uEBaGxeN90YFjD-AUjxZqM44kpMcICKKBBhb0RQQS7DHHFaay8RRAwjWsAt8GEmmB5QnxrbQWHU3TwhVXXHP0m-YNp9Ds3ihpiFan0moNv4QB7kern5cfjWhhrWe8B0dz_vYvmPssJE24P-24YfWWHubOo0L2MjQyueZfDv57N_RvDZk",
        "width": 4032,
      },
      {
        "height": 1515,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/112343109286948028063">Andrew W</a>',
        ],
        "photo_reference":
            "Aap_uEBDzJlmTeNUreMop6_hkC1HKTCRLyPs5fikJi58qCejtkWp5PIM6vzNN3HErkSWUwnamTr_WLyT7jXMAIdByR-hx8dG-OHjj5JxzmcPvuT_VeVLmdSbNPeIlpmp6EUcPOhaVrhEKojSd44QXkl0za29eZ0oj1KDOnAsGxmhanDFW7lI",
        "width": 2048,
      },
      {
        "height": 3024,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
        ],
        "photo_reference":
            "Aap_uEBvYFpzCDQzvQ0kdBxxB70lTkLbTM0yH3xF-BCHsb7DQ63cuWnutvwv8oVLDSbA14_kns3WVlEInTyy2elvmH5lzQteb6zzRu3exkwE65_55TgJqdLO7RYYiPFliWk4ocszn9nn5ELv5uP2BQmqr9QET5vwgxR-0eshyVmcdM42jb39",
        "width": 4032,
      },
      {
        "height": 4032,
        "html_attributions": [
          '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
        ],
        "photo_reference":
            "Aap_uECQynuD_EnSnbz8sJQ6-B6uR-j2tuu4Z1tuGUjq8xnxFDk-W8OdeLzWBX8suNKTCsPlkzTqC22BXf_hX33XclGPL4SS9xnPmHcMrLoUl0H_xHYevFvT17Hgw5DZpSyVmLvDvxzzJ1rsZTh55QwopmAty083a1r1ZIfL32iXh_q8FUas",
        "width": 3024,
      },
    ],
    "place_id": "ChIJN1t_tDeuEmsRUsoyG83frY4",
    "plus_code": {
      "compound_code": "45MW+C8 Pyrmont NSW, Australia",
      "global_code": "4RRH45MW+C8",
    },
    "rating": 4,
    "reviews": [
      {
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
      },
      {
        "author_name": "Tevita Taufoou",
        "author_url":
            "https://www.google.com/maps/contrib/105937236918123663309/reviews",
        "language": "en",
        "profile_photo_url":
            "https://lh3.googleusercontent.com/a/AATXAJwZANdRSSg96QeZG--6BazG5uv_BJMIvpZGqwSz=s128-c0x00000000-cc-rp-mo",
        "rating": 1,
        "relative_time_description": "6 months ago",
        "text":
            "I need help.  Google Australia is taking my money. Money I don't have any I am having trouble sorting this issue out",
        "time": 1637215605,
      },
      {
        "author_name": "Jordy Baker",
        "author_url":
            "https://www.google.com/maps/contrib/102582237417399865640/reviews",
        "language": "en",
        "profile_photo_url":
            "https://lh3.googleusercontent.com/a/AATXAJwgg1tM4aVA4nJCMjlfJtHtFZuxF475Vb6tT74S=s128-c0x00000000-cc-rp-mo",
        "rating": 1,
        "relative_time_description": "4 months ago",
        "text":
            "I have literally never been here in my life, I am 17 and they are taking money I don't have for no reason.\n\nThis is not ok. I have rent to pay and my own expenses to deal with and now this.",
        "time": 1641389490,
      },
      {
        "author_name": "Prem Rathod",
        "author_url":
            "https://www.google.com/maps/contrib/115981614018592114142/reviews",
        "language": "en",
        "profile_photo_url":
            "https://lh3.googleusercontent.com/a/AATXAJyEQpqs4YvPPzMPG2dnnRTFPC4jxJfn8YXnm2gz=s128-c0x00000000-cc-rp-mo",
        "rating": 1,
        "relative_time_description": "4 months ago",
        "text":
            "Terrible service. all reviews are fake and irrelevant. This is about reviewing google as business not the building/staff etc.",
        "time": 1640159655,
      },
      {
        "author_name": "Husuni Hamza",
        "author_url":
            "https://www.google.com/maps/contrib/102167316656574288776/reviews",
        "language": "en",
        "profile_photo_url":
            "https://lh3.googleusercontent.com/a/AATXAJwRkyvoSlgd06ahkF9XI9D39o6Zc_Oycm5EKuRg=s128-c0x00000000-cc-rp-mo",
        "rating": 5,
        "relative_time_description": "7 months ago",
        "text":
            "Nice site. Please I want to work with you. Am Alhassan Haruna, from Ghana. Contact me +233553851616",
        "time": 1633197305,
      },
    ],
    "types": ["point_of_interest", "establishment"],
    "url": "https://maps.google.com/?cid=10281119596374313554",
    "user_ratings_total": 939,
    "utc_offset": 600,
    "vicinity": "48 Pirrama Road, Pyrmont",
    "website": "http://google.com/",
  },
  "status": "OK",
};

const jsonPlace = {
  "address_components": [
    {
      "long_name": "48",
      "short_name": "48",
      "types": ["street_number"]
    },
    {
      "long_name": "Pirrama Road",
      "short_name": "Pirrama Rd",
      "types": ["route"],
    },
    {
      "long_name": "Pyrmont",
      "short_name": "Pyrmont",
      "types": ["locality", "political"],
    },
    {
      "long_name": "City of Sydney",
      "short_name": "City of Sydney",
      "types": ["administrative_area_level_2", "political"],
    },
    {
      "long_name": "New South Wales",
      "short_name": "NSW",
      "types": ["administrative_area_level_1", "political"],
    },
    {
      "long_name": "Australia",
      "short_name": "AU",
      "types": ["country", "political"],
    },
    {
      "long_name": "2009",
      "short_name": "2009",
      "types": ["postal_code"],
    },
  ],
  "adr_address":
      '<span class="street-address">48 Pirrama Rd</span>, <span class="locality">Pyrmont</span> <span class="region">NSW</span> <span class="postal-code">2009</span>, <span class="country-name">Australia</span>',
  "business_status": "OPERATIONAL",
  "formatted_address": "48 Pirrama Rd, Pyrmont NSW 2009, Australia",
  "formatted_phone_number": "(02) 9374 4000",
  "geometry": {
    "location": {"lat": -33.866489, "lng": 151.1958561},
    "viewport": {
      "northeast": {"lat": -33.8655112697085, "lng": 151.1971156302915},
      "southwest": {"lat": -33.86820923029149, "lng": 151.1944176697085},
    },
  },
  "icon":
      "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
  "icon_background_color": "#7B9EB0",
  "icon_mask_base_uri":
      "https://maps.gstatic.com/mapfiles/place_api/icons/v2/generic_pinlet",
  "international_phone_number": "+61 2 9374 4000",
  "name": "Google Workplace 6",
  "opening_hours": {
    "open_now": false,
    "periods": [
      {
        "close": {"day": 1, "time": "1700"},
        "open": {"day": 1, "time": "0900"},
      },
      {
        "close": {"day": 2, "time": "1700"},
        "open": {"day": 2, "time": "0900"},
      },
      {
        "close": {"day": 3, "time": "1700"},
        "open": {"day": 3, "time": "0900"},
      },
      {
        "close": {"day": 4, "time": "1700"},
        "open": {"day": 4, "time": "0900"},
      },
      {
        "close": {"day": 5, "time": "1700"},
        "open": {"day": 5, "time": "0900"},
      },
    ],
    "weekday_text": [
      "Monday: 9:00 AM - 5:00 PM",
      "Tuesday: 9:00 AM - 5:00 PM",
      "Wednesday: 9:00 AM - 5:00 PM",
      "Thursday: 9:00 AM - 5:00 PM",
      "Friday: 9:00 AM - 5:00 PM",
      "Saturday: Closed",
      "Sunday: Closed",
    ],
  },
  "photos": [
    {
      "height": 3024,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/117600448889234589608">Cynthia Wei</a>',
      ],
      "photo_reference":
          "Aap_uEC6jqtpflLS8GxQqPHBjlcwBf2sri0ZErk9q1ciHGZ6Zx5HBiiiEsPEO3emtB1PGyWbBQhgPL2r9CshoVlJEG4xzB71QMhGBTqqeaCNk1quO3vTTiP50aM1kmOaBQ-DF1ER7zpu6BQOEtnusKMul0m4KA45wfE3h6Xh2IxjLNzx-IiX",
      "width": 4032,
    },
    {
      "height": 3264,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/102493344958625549078">Heyang Li</a>',
      ],
      "photo_reference":
          "Aap_uECyRjHhOQgGaKTW6Z3ZfTEaDhNc44m0F6GrNSFIMffixwI5xqD35QhecdzVY-FUuDtVE1huu8-2HkxgI9Gwvy6W18fU-_E3UUkdSFBQqGK8_slKlT8BZZc66sTX53IEcTDrZfT-E5_YUBYBOm13yxOTOfWfEDABhaxCGC5Hu_XYh0fI",
      "width": 4912,
    },
    {
      "height": 3036,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/104829437842034782235">Anna Linetsky</a>',
      ],
      "photo_reference":
          "Aap_uEAumTzSdhRHDutPAj6wVPSZZmBV-brI6TPFwI0tcQlbSR74z44mUPr4aXMQKck_AzHaKmbfR3P2c1qsu45i1RQPHrcpIXxrA78FmDjCdWYYZWUnFozdcmEj9OQ_V0G08adpKivMKZyeaQ1NuwRy9GhSopeKpzkzkFZG5vXMYPPSgpa1",
      "width": 4048,
    },
    {
      "height": 4016,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/107755640736541028674">Jonah Dell</a>',
      ],
      "photo_reference":
          "Aap_uECC7cSbDkh-TdmXr6m5d5pgVXJmvXg8dF2jzhL0b0Ko4CtnVll6-tIvdz7vhbCsd3hl2u9EgZ4Y30FBxKmFcimfeYUgW2XJyv8JY5IYGuXsKkCLqpV3QH9dIGwoUv2uX0eosDsUsTN2DOlyOasUgVxcYqzIzEmrL5ofIssThQWZeozD",
      "width": 6016,
    },
    {
      "height": 3024,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/115886271727815775491">Anthony Huynh</a>',
      ],
      "photo_reference":
          "Aap_uEDTdw58CglFmZZAR9iZ05x3y2oK9r5_dRqKWnbZKSS9gs6gp9AeBa1QDvBL6dzZyQAZfN8H2Eppu6y4NBaPOp-GkulZYiKRM7Yww8sUEv-8dmcq35Tx38pe4LEX2wIicFkQHedRgMc0FfV9aFtgosQ5ps5-HCjJSApg8eLGyuxxqPm9",
      "width": 4032,
    },
    {
      "height": 3024,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/102939237947063969663">Jasen Baker</a>',
      ],
      "photo_reference":
          "Aap_uEAGqslqZPhZUk0T2Y6l7mkCYnY7JN9li4g5NkZsE0N4Cdy7_cZ-fZWyV02VhpQR4Ph4fLUL6_WTXrlGMXXzUJXUcSmSTs2d_Dzf3Q_A1y07Dm-vtv7pS3JXsWyrWETGIoT1pIj81PPdUc1vlR2i3GFMWAbx9rCC472ZJclY8JlvMg-x",
      "width": 4032,
    },
    {
      "height": 3024,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
      ],
      "photo_reference":
          "Aap_uEBaGxeN90YFjD-AUjxZqM44kpMcICKKBBhb0RQQS7DHHFaay8RRAwjWsAt8GEmmB5QnxrbQWHU3TwhVXXHP0m-YNp9Ds3ihpiFan0moNv4QB7kern5cfjWhhrWe8B0dz_vYvmPssJE24P-24YfWWHubOo0L2MjQyueZfDv57N_RvDZk",
      "width": 4032,
    },
    {
      "height": 1515,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/112343109286948028063">Andrew W</a>',
      ],
      "photo_reference":
          "Aap_uEBDzJlmTeNUreMop6_hkC1HKTCRLyPs5fikJi58qCejtkWp5PIM6vzNN3HErkSWUwnamTr_WLyT7jXMAIdByR-hx8dG-OHjj5JxzmcPvuT_VeVLmdSbNPeIlpmp6EUcPOhaVrhEKojSd44QXkl0za29eZ0oj1KDOnAsGxmhanDFW7lI",
      "width": 2048,
    },
    {
      "height": 3024,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
      ],
      "photo_reference":
          "Aap_uEBvYFpzCDQzvQ0kdBxxB70lTkLbTM0yH3xF-BCHsb7DQ63cuWnutvwv8oVLDSbA14_kns3WVlEInTyy2elvmH5lzQteb6zzRu3exkwE65_55TgJqdLO7RYYiPFliWk4ocszn9nn5ELv5uP2BQmqr9QET5vwgxR-0eshyVmcdM42jb39",
      "width": 4032,
    },
    {
      "height": 4032,
      "html_attributions": [
        '<a href="https://maps.google.com/maps/contrib/100678816592586275978">Jeremy Hsiao</a>',
      ],
      "photo_reference":
          "Aap_uECQynuD_EnSnbz8sJQ6-B6uR-j2tuu4Z1tuGUjq8xnxFDk-W8OdeLzWBX8suNKTCsPlkzTqC22BXf_hX33XclGPL4SS9xnPmHcMrLoUl0H_xHYevFvT17Hgw5DZpSyVmLvDvxzzJ1rsZTh55QwopmAty083a1r1ZIfL32iXh_q8FUas",
      "width": 3024,
    },
  ],
  "place_id": "ChIJN1t_tDeuEmsRUsoyG83frY4",
  "plus_code": {
    "compound_code": "45MW+C8 Pyrmont NSW, Australia",
    "global_code": "4RRH45MW+C8",
  },
  "rating": 4,
  "reference": "ChIJN1t_tDeuEmsRUsoyG83frY4",
  "reviews": [
    {
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
    },
    {
      "author_name": "Tevita Taufoou",
      "author_url":
          "https://www.google.com/maps/contrib/105937236918123663309/reviews",
      "language": "en",
      "profile_photo_url":
          "https://lh3.googleusercontent.com/a/AATXAJwZANdRSSg96QeZG--6BazG5uv_BJMIvpZGqwSz=s128-c0x00000000-cc-rp-mo",
      "rating": 1,
      "relative_time_description": "6 months ago",
      "text":
          "I need help.  Google Australia is taking my money. Money I don't have any I am having trouble sorting this issue out",
      "time": 1637215605,
    },
    {
      "author_name": "Jordy Baker",
      "author_url":
          "https://www.google.com/maps/contrib/102582237417399865640/reviews",
      "language": "en",
      "profile_photo_url":
          "https://lh3.googleusercontent.com/a/AATXAJwgg1tM4aVA4nJCMjlfJtHtFZuxF475Vb6tT74S=s128-c0x00000000-cc-rp-mo",
      "rating": 1,
      "relative_time_description": "4 months ago",
      "text":
          "I have literally never been here in my life, I am 17 and they are taking money I don't have for no reason.\n\nThis is not ok. I have rent to pay and my own expenses to deal with and now this.",
      "time": 1641389490,
    },
    {
      "author_name": "Prem Rathod",
      "author_url":
          "https://www.google.com/maps/contrib/115981614018592114142/reviews",
      "language": "en",
      "profile_photo_url":
          "https://lh3.googleusercontent.com/a/AATXAJyEQpqs4YvPPzMPG2dnnRTFPC4jxJfn8YXnm2gz=s128-c0x00000000-cc-rp-mo",
      "rating": 1,
      "relative_time_description": "4 months ago",
      "text":
          "Terrible service. all reviews are fake and irrelevant. This is about reviewing google as business not the building/staff etc.",
      "time": 1640159655,
    },
    {
      "author_name": "Husuni Hamza",
      "author_url":
          "https://www.google.com/maps/contrib/102167316656574288776/reviews",
      "language": "en",
      "profile_photo_url":
          "https://lh3.googleusercontent.com/a/AATXAJwRkyvoSlgd06ahkF9XI9D39o6Zc_Oycm5EKuRg=s128-c0x00000000-cc-rp-mo",
      "rating": 5,
      "relative_time_description": "7 months ago",
      "text":
          "Nice site. Please I want to work with you. Am Alhassan Haruna, from Ghana. Contact me +233553851616",
      "time": 1633197305,
    },
  ],
  "types": ["point_of_interest", "establishment"],
  "url": "https://maps.google.com/?cid=10281119596374313554",
  "user_ratings_total": 939,
  "utc_offset": 600,
  "vicinity": "48 Pirrama Road, Pyrmont",
  "website": "http://google.com/",
};

const mockPlace = Place(
  addressComponents: [
    AddressComponent(
      longName: "48",
      shortName: "48",
      types: ["street_number"],
    ),
    AddressComponent(
      longName: "Pirrama Road",
      shortName: "Pirrama Rd",
      types: ["route"],
    ),
    AddressComponent(
      longName: "Pyrmont",
      shortName: "Pyrmont",
      types: ["locality", "political"],
    ),
    AddressComponent(
      longName: "City of Sydney",
      shortName: "City of Sydney",
      types: ["administrative_area_level_2", "political"],
    ),
    AddressComponent(
      longName: "New South Wales",
      shortName: "NSW",
      types: ["administrative_area_level_1", "political"],
    ),
    AddressComponent(
      longName: "Australia",
      shortName: "AU",
      types: ["country", "political"],
    ),
    AddressComponent(
      longName: "2009",
      shortName: "2009",
      types: ["postal_code"],
    ),
  ],
  adrAddress:
      '<span class="street-address">48 Pirrama Rd</span>, <span class="locality">Pyrmont</span> <span class="region">NSW</span> <span class="postal-code">2009</span>, <span class="country-name">Australia</span>',
  businessStatus: "OPERATIONAL",
  formattedAddress: "48 Pirrama Rd, Pyrmont NSW 2009, Australia",
  formattedPhoneNumber: "(02) 9374 4000",
  geometry: Geometry(
    location: LatLng(-33.866489, 151.1958561),
    viewport: Bounds(
      northeast: LatLng(-33.8655112697085, 151.1971156302915),
      southwest: LatLng(-33.86820923029149, 151.1944176697085),
    ),
  ),
  icon:
      "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
  iconBackgroundColor: "#7B9EB0",
  iconMaskBaseUri:
      "https://maps.gstatic.com/mapfiles/place_api/icons/v2/generic_pinlet",
  internationalPhoneNumber: "+61 2 9374 4000",
  name: "Google Workplace 6",
  openingHours: PlaceOpeningHours(
    openNow: false,
    periods: [
      PlaceOpeningHoursPeriod(
        close: PlaceOpeningHoursPeriodDetail(
          day: 1,
          time: "1700",
        ),
        open: PlaceOpeningHoursPeriodDetail(
          day: 1,
          time: "0900",
        ),
      ),
      PlaceOpeningHoursPeriod(
        close: PlaceOpeningHoursPeriodDetail(
          day: 2,
          time: "1700",
        ),
        open: PlaceOpeningHoursPeriodDetail(
          day: 2,
          time: "0900",
        ),
      ),
      PlaceOpeningHoursPeriod(
        close: PlaceOpeningHoursPeriodDetail(
          day: 3,
          time: "1700",
        ),
        open: PlaceOpeningHoursPeriodDetail(
          day: 3,
          time: "0900",
        ),
      ),
      PlaceOpeningHoursPeriod(
        close: PlaceOpeningHoursPeriodDetail(
          day: 4,
          time: "1700",
        ),
        open: PlaceOpeningHoursPeriodDetail(
          day: 4,
          time: "0900",
        ),
      ),
      PlaceOpeningHoursPeriod(
        close: PlaceOpeningHoursPeriodDetail(
          day: 5,
          time: "1700",
        ),
        open: PlaceOpeningHoursPeriodDetail(
          day: 5,
          time: "0900",
        ),
      ),
    ],
    weekdayText: [
      "Monday: 9:00 AM - 5:00 PM",
      "Tuesday: 9:00 AM - 5:00 PM",
      "Wednesday: 9:00 AM - 5:00 PM",
      "Thursday: 9:00 AM - 5:00 PM",
      "Friday: 9:00 AM - 5:00 PM",
      "Saturday: Closed",
      "Sunday: Closed",
    ],
  ),
  photos: [
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
  ],
  placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
  plusCode: PlusCode(
    compoundCode: "45MW+C8 Pyrmont NSW, Australia",
    globalCode: "4RRH45MW+C8",
  ),
  rating: 4,
  reviews: [
    PlaceReview(
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
    ),
    PlaceReview(
      authorName: "Tevita Taufoou",
      authorUrl:
          "https://www.google.com/maps/contrib/105937236918123663309/reviews",
      language: "en",
      profilePhotoUrl:
          "https://lh3.googleusercontent.com/a/AATXAJwZANdRSSg96QeZG--6BazG5uv_BJMIvpZGqwSz=s128-c0x00000000-cc-rp-mo",
      rating: 1,
      relativeTimeDescription: "6 months ago",
      text:
          "I need help.  Google Australia is taking my money. Money I don't have any I am having trouble sorting this issue out",
      time: 1637215605,
    ),
    PlaceReview(
      authorName: "Jordy Baker",
      authorUrl:
          "https://www.google.com/maps/contrib/102582237417399865640/reviews",
      language: "en",
      profilePhotoUrl:
          "https://lh3.googleusercontent.com/a/AATXAJwgg1tM4aVA4nJCMjlfJtHtFZuxF475Vb6tT74S=s128-c0x00000000-cc-rp-mo",
      rating: 1,
      relativeTimeDescription: "4 months ago",
      text:
          "I have literally never been here in my life, I am 17 and they are taking money I don't have for no reason.\n\nThis is not ok. I have rent to pay and my own expenses to deal with and now this.",
      time: 1641389490,
    ),
    PlaceReview(
      authorName: "Prem Rathod",
      authorUrl:
          "https://www.google.com/maps/contrib/115981614018592114142/reviews",
      language: "en",
      profilePhotoUrl:
          "https://lh3.googleusercontent.com/a/AATXAJyEQpqs4YvPPzMPG2dnnRTFPC4jxJfn8YXnm2gz=s128-c0x00000000-cc-rp-mo",
      rating: 1,
      relativeTimeDescription: "4 months ago",
      text:
          "Terrible service. all reviews are fake and irrelevant. This is about reviewing google as business not the building/staff etc.",
      time: 1640159655,
    ),
    PlaceReview(
      authorName: "Husuni Hamza",
      authorUrl:
          "https://www.google.com/maps/contrib/102167316656574288776/reviews",
      language: "en",
      profilePhotoUrl:
          "https://lh3.googleusercontent.com/a/AATXAJwRkyvoSlgd06ahkF9XI9D39o6Zc_Oycm5EKuRg=s128-c0x00000000-cc-rp-mo",
      rating: 5,
      relativeTimeDescription: "7 months ago",
      text:
          "Nice site. Please I want to work with you. Am Alhassan Haruna, from Ghana. Contact me +233553851616",
      time: 1633197305,
    ),
  ],
  types: ["point_of_interest", "establishment"],
  url: "https://maps.google.com/?cid=10281119596374313554",
  userRatingsTotal: 939,
  utcOffset: 600,
  vicinity: "48 Pirrama Road, Pyrmont",
  website: "http://google.com/",
);

const placeDetailsResponse = PlaceDetailsResponse(
  htmlAttributions: [],
  result: mockPlace,
  status: PlacesDetailsStatus.OK,
);
