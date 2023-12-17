import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_api/places/autocomplete/request/place_autocomplete_request_options.dart';
import 'package:google_maps_api/places/autocomplete/response/place_autocomplete_prediction.dart';
import 'package:google_maps_api/places/details/response/place.dart';
import 'package:google_maps_api/widgets/autocomplete/place_autocomplete.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FullPlaceAutocompleteExample extends StatefulWidget {
  const FullPlaceAutocompleteExample({super.key});

  @override
  State<FullPlaceAutocompleteExample> createState() =>
      _FullPlaceAutocompleteExampleState();
}

class _FullPlaceAutocompleteExampleState
    extends State<FullPlaceAutocompleteExample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _oslo = CameraPosition(
    target: LatLng(59.907986033650026, 10.753576201859465),
    zoom: 14.4746,
  );

  final _options = PlaceAutocompleteRequestOptions(components: ['no']);

  final List<Place> _places = [];

  void displayPlacesInformation(Place place) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 32, left: 8, right: 8, top: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                place.name ?? "",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Image.network(place.icon ?? ""),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Set<Marker> markers = _places
        .map(
          (place) => Marker(
            markerId: MarkerId(place.placeId!),
            position: place.geometry!.location,
            onTap: () => displayPlacesInformation(place),
          ),
        )
        .toSet();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _oslo,
            markers: markers,
            onMapCreated: (controller) {
              _controller.complete(controller);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64),
            child: PlaceAutocomplete(
              apiKey: dotenv.env['apiKey']!,
              onSelected: (selection) {
                setState(() {
                  _places.add(selection);
                });

                displayPlacesInformation(selection);

                // Move camera to selected location
                _controller.future.then((controller) {
                  controller.animateCamera(
                    CameraUpdate.newLatLng(selection.geometry!.location),
                  );
                });
              },
              options: _options,
              decoration: const InputDecoration(
                labelText: "Search",
                contentPadding:
                    EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      32,
                    ),
                  ),
                ),
              ),
              optionsViewBuilder: (context, onSelected, options) {
                return Material(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ListView.separated(
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        final PlaceAutocompletePrediction option =
                            options.elementAt(index);

                        final mainText = option.structuredFormatting.mainText;
                        final mainTextMatchedSubstrings = option
                            .structuredFormatting.mainTextMatchedSubstrings[0];

                        return ListTile(
                          leading: Ink(
                            padding: const EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                              color: Colors.grey.shade200,
                              shape: const CircleBorder(),
                            ),
                            child: const Icon(Icons.location_pin),
                          ),
                          onTap: () => onSelected(option),
                          title: RichText(
                            text: TextSpan(
                              text: mainText.substring(
                                0,
                                (mainTextMatchedSubstrings.offset).toInt(),
                              ),
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  text: mainText.substring(
                                    mainTextMatchedSubstrings.offset.toInt(),
                                    (mainTextMatchedSubstrings.offset +
                                            mainTextMatchedSubstrings.length)
                                        .toInt(),
                                  ),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: mainText.substring(
                                    (mainTextMatchedSubstrings.offset +
                                            mainTextMatchedSubstrings.length)
                                        .toInt(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Text(
                            option.structuredFormatting.secondaryText ?? "",
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
