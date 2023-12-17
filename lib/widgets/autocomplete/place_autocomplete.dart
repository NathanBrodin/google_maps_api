import 'package:google_maps_api/google_maps_api.dart';
import 'package:google_maps_api/places/autocomplete/response/place_autocomplete_prediction.dart';
import 'package:google_maps_api/places/autocomplete/response/places_autocomplete_status.dart';
import 'package:google_maps_api/places/details/response/place.dart';
import 'package:google_maps_api/places/details/response/place_details_response.dart';
import 'package:google_maps_api/places/details/response/place_details_status.dart';
import 'package:google_maps_api/widgets/autocomplete/debounce.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaceAutocomplete extends StatefulWidget {
  /// Called when a place is selected
  final Function(Place selection)? onSelected;

  /// Your GoogleMaps API Key
  final String apiKey;

  final PlaceAutocompleteRequestOptions? options;

  /// The debounce delay in milliseconds, defaults to 200
  final int? debounceDelay;

  /// Decoration of the text field
  final InputDecoration? decoration;

  /// OptionsViewBuilder
  final Widget Function(
      BuildContext context,
      void Function(PlaceAutocompletePrediction) onSelected,
      Iterable<PlaceAutocompletePrediction> options)? optionsViewBuilder;

  /// The http client used to make the request, available as a parameter for mock testing purposes
  final http.Client? client;

  PlaceAutocomplete({
    super.key,
    this.onSelected,
    required this.apiKey,
    this.options,
    this.debounceDelay,
    this.decoration,
    this.optionsViewBuilder,
    http.Client? client,
  }) : client = client ?? http.Client();

  @override
  State<PlaceAutocomplete> createState() => _PlaceAutocompleteState();
}

class _PlaceAutocompleteState extends State<PlaceAutocomplete> {
  late final googleMapsAPI =
      GoogleMapsApi(apiKey: widget.apiKey, client: widget.client);

  // The query currently being searched for. If null, there is no pending
  // request.
  String? _currentQuery;

// The most recent options received from the API.
  late Iterable<PlaceAutocompletePrediction> _lastOptions =
      <PlaceAutocompletePrediction>[];

  late final Debounceable<Iterable<PlaceAutocompletePrediction>?, String>
      _debouncedSearch;

  // A request error was recieved on the most recent query.
  bool _requestError = false;

  // Calls the API to search with the given query. Returns null when
  // the call has been made obsolete.
  Future<Iterable<PlaceAutocompletePrediction>?> _search(String query) async {
    _currentQuery = query;

    if (query == "") {
      return <PlaceAutocompletePrediction>[];
    }

    late final Iterable<PlaceAutocompletePrediction> options;
    try {
      final response = await googleMapsAPI.places.autocomplete(
        input: _currentQuery!,
        options: widget.options,
      );

      if (response.status == PlacesAutocompleteStatus.ZERO_RESULTS) {
        return <PlaceAutocompletePrediction>[];
      }
      if (response.status != PlacesAutocompleteStatus.OK) {
        throw Exception(response.errorMessage);
      }
      options = response.predictions;
    } catch (error) {
      debugPrint(error.toString());
      setState(() {
        _requestError = true;
      });
      return <PlaceAutocompletePrediction>[];
    }

    // If another search happened after this one, throw away these options.
    if (_currentQuery != query) {
      return null;
    }
    _currentQuery = null;

    return options;
  }

  Future<PlaceDetailsResponse> _getPlaceDetails(String placeId) async {
    PlaceDetailsResponse response =
        await googleMapsAPI.places.details(placeId: placeId);

    if (response.status != PlacesDetailsStatus.OK) {
      throw Exception("Error getting place details");
    } else {
      return response;
    }
  }

  @override
  void initState() {
    super.initState();
    _debouncedSearch = debounce<Iterable<PlaceAutocompletePrediction>?, String>(
        _search,
        duration: widget.debounceDelay ?? 500);
  }

  @override
  Widget build(BuildContext context) {
    return Autocomplete<PlaceAutocompletePrediction>(
      fieldViewBuilder: (BuildContext context, TextEditingController controller,
          FocusNode focusNode, VoidCallback onFieldSubmitted) {
        return TextFormField(
          decoration: widget.decoration ??
              InputDecoration(
                errorText:
                    _requestError ? 'Request error, please try again.' : null,
              ),
          keyboardType: TextInputType.streetAddress,
          controller: controller,
          focusNode: focusNode,
          onFieldSubmitted: (String value) {
            onFieldSubmitted();
          },
        );
      },
      optionsViewBuilder: widget.optionsViewBuilder ??
          (context, onSelected, options) {
            return Material(
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      final PlaceAutocompletePrediction option =
                          options.elementAt(index);
                      return ListTile(
                        onTap: () => onSelected(option),
                        title: Text(option.toString()),
                      );
                    }),
              ),
            );
          },
      optionsBuilder: (TextEditingValue textEditingValue) async {
        setState(() {
          _requestError = false;
        });
        final Iterable<PlaceAutocompletePrediction>? options =
            await _debouncedSearch(textEditingValue.text);
        if (options == null) {
          return _lastOptions;
        }
        _lastOptions = options;
        return options;
      },
      onSelected: (PlaceAutocompletePrediction selection) async {
        PlaceDetailsResponse response =
            await _getPlaceDetails(selection.placeId!);

        widget.onSelected?.call(response.result);
      },
    );
  }
}
