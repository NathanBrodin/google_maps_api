# Flutter Google Maps API Package

This package seamlessly integrates the Google Maps API into your Flutter application, offering type-safe requests and responses, complemented with versatile widgets.

## Features

### API
The package provides fully type-safe request and response handling for the following Google Maps API endpoints:

- `Places API`:
    - Autocomplete
    - Details
    - Search (Upcoming)
    - Photos (Upcoming)

- `Geocoding`:
    - Geocode (Upcoming)
    - Reverse Geocoding (Upcoming)

- `Routes`:
    - Various functionalities (Upcoming)

### Widgets
In addition to API integration, this package offers customizable widgets leveraging these APIs, such as:
- Place Autocomplete Widget

## Getting Started

1. Obtain an API key from [Google Cloud Console](https://console.cloud.google.com/google/maps-apis/credentials).
2. Ensure the key is enabled for `WEB Requests` since the package uses HTTP requests to interact with the APIs.
3. Install the latest version of this package using:
   ```shell
   flutter pub add google_maps_api

## Usage
Initialize the API with your key:
```dart
final googleMapsApi = GoogleMapsApi(apiKey: "YOUR_API_KEY");
```

Example usage for retrieving place details:
```dart
final googleMapsApi = GoogleMapsApi(apiKey: "YOUR_API_KEY");
PlacesDetailsResponse response = await googleMapsApi.places.details(
    placeId: "ChIJN1t_tDeuEmsRUsoyG83frY4",
);

if (response.status == PlacesDetailsStatus.OK) {
    print(response.place);
}
```
Widget example:
```dart
PlaceAutocomplete(
    onSelected: (selection) {
        setState(() {
            _selection = selection;
        });
    },
    apiKey: "YOUR_API_KEY",
),
```

For more examples, refer to the `/example` directory, which includes a comprehensive sample application.

## Additional Information
### Contributing
As the Google Maps API encompasses numerous endpoints, contributions are highly appreciated to expand and enhance this package.

> If you find this package useful, please give it a like and star it on GitHub to support its popularity!