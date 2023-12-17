import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_matched_substring.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_prediction.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_response.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_structured_format.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/place_autocomplete_term.dart';
import 'package:google_maps_api_flutter/places/autocomplete/response/places_autocomplete_status.dart';

const jsonPlacesAutocompleteResponse = {
  "predictions": [
    {
      "description": "Paris, France",
      "matched_substrings": [
        {"length": 5, "offset": 0}
      ],
      "place_id": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
      "reference": "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
      "structured_formatting": {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "secondary_text": "France",
      },
      "terms": [
        {"offset": 0, "value": "Paris"},
        {"offset": 7, "value": "France"},
      ],
      "types": ["locality", "political", "geocode"],
    },
    {
      "description": "Paris, TX, USA",
      "matched_substrings": [
        {"length": 5, "offset": 0}
      ],
      "place_id": "ChIJmysnFgZYSoYRSfPTL2YJuck",
      "reference": "ChIJmysnFgZYSoYRSfPTL2YJuck",
      "structured_formatting": {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "secondary_text": "TX, USA",
      },
      "terms": [
        {"offset": 0, "value": "Paris"},
        {"offset": 7, "value": "TX"},
        {"offset": 11, "value": "USA"},
      ],
      "types": ["locality", "political", "geocode"],
    },
    {
      "description": "Paris, TN, USA",
      "matched_substrings": [
        {"length": 5, "offset": 0}
      ],
      "place_id": "ChIJ4zHP-Sije4gRBDEsVxunOWg",
      "reference": "ChIJ4zHP-Sije4gRBDEsVxunOWg",
      "structured_formatting": {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "secondary_text": "TN, USA",
      },
      "terms": [
        {"offset": 0, "value": "Paris"},
        {"offset": 7, "value": "TN"},
        {"offset": 11, "value": "USA"},
      ],
      "types": ["locality", "political", "geocode"],
    },
    {
      "description": "Paris, Brant, ON, Canada",
      "matched_substrings": [
        {"length": 5, "offset": 0}
      ],
      "place_id": "ChIJsamfQbVtLIgR-X18G75Hyi0",
      "reference": "ChIJsamfQbVtLIgR-X18G75Hyi0",
      "structured_formatting": {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "secondary_text": "Brant, ON, Canada",
      },
      "terms": [
        {"offset": 0, "value": "Paris"},
        {"offset": 7, "value": "Brant"},
        {"offset": 14, "value": "ON"},
        {"offset": 18, "value": "Canada"},
      ],
      "types": ["neighborhood", "political", "geocode"],
    },
    {
      "description": "Paris, KY, USA",
      "matched_substrings": [
        {"length": 5, "offset": 0}
      ],
      "place_id": "ChIJsU7_xMfKQ4gReI89RJn0-RQ",
      "reference": "ChIJsU7_xMfKQ4gReI89RJn0-RQ",
      "structured_formatting": {
        "main_text": "Paris",
        "main_text_matched_substrings": [
          {"length": 5, "offset": 0}
        ],
        "secondary_text": "KY, USA",
      },
      "terms": [
        {"offset": 0, "value": "Paris"},
        {"offset": 7, "value": "KY"},
        {"offset": 11, "value": "USA"},
      ],
      "types": ["locality", "political", "geocode"],
    },
  ],
  "status": "OK",
};

const placesAutocompleteResponse = PlacesAutocompleteResponse(
  predictions: [
    PlaceAutocompletePrediction(
      description: "Paris, France",
      matchedSubstrings: [
        PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
      ],
      placeId: "ChIJD7fiBh9u5kcRYJSMaMOCCwQ",
      structuredFormatting: PlaceAutocompleteStructuredFormat(
        mainText: "Paris",
        mainTextMatchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        secondaryText: "France",
      ),
      terms: [
        PlaceAutocompleteTerm(offset: 0, value: "Paris"),
        PlaceAutocompleteTerm(offset: 7, value: "France"),
      ],
      types: ["locality", "political", "geocode"],
    ),
    PlaceAutocompletePrediction(
      description: "Paris, TX, USA",
      matchedSubstrings: [
        PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
      ],
      placeId: "ChIJmysnFgZYSoYRSfPTL2YJuck",
      structuredFormatting: PlaceAutocompleteStructuredFormat(
        mainText: "Paris",
        mainTextMatchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        secondaryText: "TX, USA",
      ),
      terms: [
        PlaceAutocompleteTerm(offset: 0, value: "Paris"),
        PlaceAutocompleteTerm(offset: 7, value: "TX"),
        PlaceAutocompleteTerm(offset: 11, value: "USA"),
      ],
      types: ["locality", "political", "geocode"],
    ),
    PlaceAutocompletePrediction(
      description: "Paris, TN, USA",
      matchedSubstrings: [
        PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
      ],
      placeId: "ChIJ4zHP-Sije4gRBDEsVxunOWg",
      structuredFormatting: PlaceAutocompleteStructuredFormat(
        mainText: "Paris",
        mainTextMatchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        secondaryText: "TN, USA",
      ),
      terms: [
        PlaceAutocompleteTerm(offset: 0, value: "Paris"),
        PlaceAutocompleteTerm(offset: 7, value: "TN"),
        PlaceAutocompleteTerm(offset: 11, value: "USA"),
      ],
      types: ["locality", "political", "geocode"],
    ),
    PlaceAutocompletePrediction(
      description: "Paris, Brant, ON, Canada",
      matchedSubstrings: [
        PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
      ],
      placeId: "ChIJsamfQbVtLIgR-X18G75Hyi0",
      structuredFormatting: PlaceAutocompleteStructuredFormat(
        mainText: "Paris",
        mainTextMatchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        secondaryText: "Brant, ON, Canada",
      ),
      terms: [
        PlaceAutocompleteTerm(offset: 0, value: "Paris"),
        PlaceAutocompleteTerm(offset: 7, value: "Brant"),
        PlaceAutocompleteTerm(offset: 14, value: "ON"),
        PlaceAutocompleteTerm(offset: 18, value: "Canada"),
      ],
      types: ["neighborhood", "political", "geocode"],
    ),
    PlaceAutocompletePrediction(
      description: "Paris, KY, USA",
      matchedSubstrings: [
        PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
      ],
      placeId: "ChIJsU7_xMfKQ4gReI89RJn0-RQ",
      structuredFormatting: PlaceAutocompleteStructuredFormat(
        mainText: "Paris",
        mainTextMatchedSubstrings: [
          PlaceAutocompleteMatchedSubstring(length: 5, offset: 0),
        ],
        secondaryText: "KY, USA",
      ),
      terms: [
        PlaceAutocompleteTerm(offset: 0, value: "Paris"),
        PlaceAutocompleteTerm(offset: 7, value: "KY"),
        PlaceAutocompleteTerm(offset: 11, value: "USA"),
      ],
      types: ["locality", "political", "geocode"],
    ),
  ],
  status: PlacesAutocompleteStatus.OK,
);

const jsonErrorPlacesAutocompleteResponse = {
  "predictions": [],
  "status": "INVALID_REQUEST",
};
