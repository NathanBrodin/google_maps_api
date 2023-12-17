import 'package:google_maps_api/places/autocomplete/autocomplete.dart';
import 'package:google_maps_api/places/autocomplete/request/place_autocomplete_request_options.dart';
import 'package:google_maps_api/places/autocomplete/response/place_autocomplete_response.dart';
import 'package:google_maps_api/places/details/details.dart';
import 'package:google_maps_api/places/details/request/place_details_request_options.dart';
import 'package:google_maps_api/places/details/response/place_details_response.dart';
import 'package:http/http.dart' as http;

/// https://developers.google.com/maps/documentation/places/web-service/overview
class Places {
  final AutocompleteService _autocompleteService;
  final DetailsService _detailsService;

  Places({
    required String apiKey,
    required http.Client client,
  })  : _autocompleteService =
            AutocompleteService(apiKey: apiKey, client: client),
        _detailsService = DetailsService(apiKey: apiKey, client: client);

  /// The Place Autocomplete API returns place predictions in response of a textual search string and optional geographic bounds.
  /// Specify [options] to get more specific results
  ///
  /// Usage example:
  /// ```dart
  /// final googleMapsApi = GoogleMapsApi(apiKey: "MY_API_KEY");
  /// PlacesAutocompleteResponse response =
  ///     await googleMapsApi.places.autocomplete(
  ///       input: "Paris, Fr",
  /// );
  /// ```
  ///
  /// Find the official Google Maps Places autocomplete API documentation [here](https://developers.google.com/maps/documentation/places/web-service/autocomplete)
  Future<PlacesAutocompleteResponse> autocomplete({
    required String input,
    PlaceAutocompleteRequestOptions? options,
  }) async {
    return _autocompleteService.autocomplete(input: input, options: options);
  }

  /// Once you have a place_id from a Place Search, you can request more details about a particular establishment or point
  /// of interest by initiating a Place Details request. A Place Details request returns more comprehensive information about
  /// the indicated place such as its complete address, phone number, user rating and reviews.
  ///
  /// Usage example:
  /// ```dart
  /// final googleMapsApi = GoogleMapsApi(apiKey: "MY_API_KEY");
  /// PlacesDetailsResponse response =
  ///     await googleMapsApi.places.details(
  ///       placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
  /// );
  /// ```
  ///
  /// Find the official Google Maps Places details API documentation [here](https://developers.google.com/maps/documentation/places/web-service/details#PlaceEditorialSummary)
  Future<PlaceDetailsResponse> details({
    required String placeId,
    PlaceDetailsRequestOptions? options,
  }) async {
    return _detailsService.details(placeId: placeId, options: options);
  }
}
