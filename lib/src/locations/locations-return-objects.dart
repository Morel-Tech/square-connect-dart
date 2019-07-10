import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/helper-classes.dart';

class ListLocationsResponse {
  final List<SquareError> errors;
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
}
