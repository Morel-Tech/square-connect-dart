import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

/// The response to the `listLocations()` method in [LocationsApi].
class ListLocationsResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The list of [Location]s returned.
  final List<Location> locations;

  ListLocationsResponse({this.errors, this.locations})
      : assert(xor(errors == null, locations == null));

  factory ListLocationsResponse.fromJson(Map<String, dynamic> json) {
    return ListLocationsResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      locations: json['locations'] != null
          ? (json['locations'] as List)
              .map((item) => Location.fromJson(item))
              .toList()
          : null,
    );
  }

  get hasErrors {
    return errors != null;
  }
}
