import 'package:flutter/material.dart';
import 'package:google_maps_api_flutter/places/details/response/place.dart';
import 'package:google_maps_api_flutter/widgets/autocomplete/place_autocomplete.dart';

class SimplePlaceAutocompleteExample extends StatefulWidget {
  const SimplePlaceAutocompleteExample({super.key});

  @override
  State<SimplePlaceAutocompleteExample> createState() =>
      _SimplePlaceAutocompleteExampleState();
}

class _SimplePlaceAutocompleteExampleState
    extends State<SimplePlaceAutocompleteExample> {
  Place? _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(_selection != null
              ? "You selected ${_selection?.name ?? ""}"
              : ""),
          PlaceAutocomplete(
            onSelected: (selection) {
              setState(() {
                _selection = selection;
              });
            },
            apiKey: "YOUR_GOOGLE_MAPS_API_KEY",
          ),
        ],
      ),
    );
  }
}
