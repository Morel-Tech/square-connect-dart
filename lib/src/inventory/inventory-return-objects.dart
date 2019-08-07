import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/super-classes.dart';

/// The response to the `batchChangeInventory()` method in [InventoryApi].
class BatchChangeInventoryResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The newly changed [InventoryCount]s.
  final List<InventoryCount> counts;

  BatchChangeInventoryResponse({
    this.errors,
    this.counts,
  });

  factory BatchChangeInventoryResponse.fromJson(Map<String, dynamic> json) {
    return BatchChangeInventoryResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      counts: json['counts'] != null
          ? (json['counts'] as List)
              .map((error) => InventoryCount.fromJson(error))
              .toList()
          : null,
    );
  }
}

/// The response to the `batchRetrieveInventoryChanges()` method in [InventoryApi].
class BatchRetrieveInventoryChangesResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [InventoryChange]s.
  final List<InventoryChange> changes;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  BatchRetrieveInventoryChangesResponse({
    this.errors,
    this.changes,
    this.cursor,
  });

  factory BatchRetrieveInventoryChangesResponse.fromJson(
      Map<String, dynamic> json) {
    return BatchRetrieveInventoryChangesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      changes: json['counts'] != null
          ? (json['counts'] as List)
              .map((error) => InventoryChange.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}
