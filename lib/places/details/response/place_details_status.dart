// ignore_for_file: constant_identifier_names

/// https://developers.google.com/maps/documentation/places/web-service/details#PlacesDetailsStatus
enum PlacesDetailsStatus {
  OK,
  ZERO_RESULTS,
  NOT_FOUND,
  INVALID_REQUEST,
  OVER_QUERY_LIMIT,
  REQUEST_DENIED,
  UNKNOWN_ERROR,
}

String handlePlacesDetailsStatus(PlacesDetailsStatus status) {
  switch (status) {
    case PlacesDetailsStatus.OK:
      return "API request was successful";
    case PlacesDetailsStatus.ZERO_RESULTS:
      return "The referenced location, place_id, was valid but no longer refers to a valid result. This may occur if the establishment is no longer in business.";
    case PlacesDetailsStatus.NOT_FOUND:
      return "The referenced location, place_id, was not found in the Places database.";
    case PlacesDetailsStatus.INVALID_REQUEST:
      return "API request was malformed";
    case PlacesDetailsStatus.OVER_QUERY_LIMIT:
      return "Query limit exceeded. Check billing and usage limits";
    case PlacesDetailsStatus.REQUEST_DENIED:
      return "Request was denied. Check API key and permissions";
    case PlacesDetailsStatus.UNKNOWN_ERROR:
      return "An unknown error occurred";
    default:
      return "Unhandled status code";
  }
}
