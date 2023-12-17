// ignore_for_file: constant_identifier_names

/// https://developers.google.com/maps/documentation/places/web-service/autocomplete#PlacesAutocompleteStatus
enum PlacesAutocompleteStatus {
  OK,
  ZERO_RESULTS,
  INVALID_REQUEST,
  OVER_QUERY_LIMIT,
  REQUEST_DENIED,
  UNKNOWN_ERROR,
}

String handlePlacesAutocompleteStatus(PlacesAutocompleteStatus status) {
  switch (status) {
    case PlacesAutocompleteStatus.OK:
      return "API request was successful";
    case PlacesAutocompleteStatus.ZERO_RESULTS:
      return "Search was successful but returned no results";
    case PlacesAutocompleteStatus.INVALID_REQUEST:
      return "API request was malformed";
    case PlacesAutocompleteStatus.OVER_QUERY_LIMIT:
      return "Query limit exceeded. Check billing and usage limits";
    case PlacesAutocompleteStatus.REQUEST_DENIED:
      return "Request was denied. Check API key and permissions";
    case PlacesAutocompleteStatus.UNKNOWN_ERROR:
      return "An unknown error occurred";
    default:
      return "Unhandled status code";
  }
}
