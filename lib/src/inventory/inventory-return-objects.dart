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

  factory BatchChangeInventoryResponse.fromJson(Map<dynamic, dynamic> json) {
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
      Map<dynamic, dynamic> json) {
    return BatchRetrieveInventoryChangesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      changes: json['changes'] != null
          ? (json['changes'] as List)
              .map((error) => InventoryChange.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `batchRetrieveInventoryCounts()` method in [InventoryApi].
class BatchRetrieveInventoryCountsResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [InventoryCount]s.
  final List<InventoryCount> counts;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  BatchRetrieveInventoryCountsResponse({
    this.errors,
    this.counts,
    this.cursor,
  });

  factory BatchRetrieveInventoryCountsResponse.fromJson(
      Map<dynamic, dynamic> json) {
    return BatchRetrieveInventoryCountsResponse(
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
      cursor: json['cursor'],
    );
  }
}

/// The response to the `retrieveInventoryAdjustment()` method in [InventoryApi].
class RetrieveInventoryAdjustmentResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [InventoryAdjustment].
  final InventoryAdjustment adjustment;

  RetrieveInventoryAdjustmentResponse({
    this.errors,
    this.adjustment,
  });

  factory RetrieveInventoryAdjustmentResponse.fromJson(
      Map<dynamic, dynamic> json) {
    return RetrieveInventoryAdjustmentResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      adjustment: json['adjustment'] != null
          ? InventoryAdjustment.fromJson(json['adjustment'])
          : null,
    );
  }
}

/// The response to the `retrieveInventoryChangesChanges()` method in [InventoryApi].
class RetrieveInventoryChangesResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [InventoryChange]s.
  final List<InventoryChange> changes;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  RetrieveInventoryChangesResponse({
    this.errors,
    this.changes,
    this.cursor,
  });

  factory RetrieveInventoryChangesResponse.fromJson(Map<dynamic, dynamic> json) {
    return RetrieveInventoryChangesResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      changes: json['changes'] != null
          ? (json['changes'] as List)
              .map((error) => InventoryChange.fromJson(error))
              .toList()
          : null,
      cursor: json['cursor'],
    );
  }
}

/// The response to the `retrieveInventoryCount()` method in [InventoryApi].
class RetrieveInventoryCountResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [InventoryCount]s.
  final List<InventoryCount> counts;

  /// A pagination cursor to be used in a future call.
  final String cursor;

  RetrieveInventoryCountResponse({
    this.errors,
    this.counts,
    this.cursor,
  });

  factory RetrieveInventoryCountResponse.fromJson(Map<dynamic, dynamic> json) {
    return RetrieveInventoryCountResponse(
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
      cursor: json['cursor'],
    );
  }
}

/// The response to the `retrieveInventoryPhysicalCount()` method in [InventoryApi].
class RetrieveInventoryPhysicalCountResponse extends ApiResponse {
  /// The list of errors if any exist.
  final List<SquareError> errors;

  /// The retrieved [InventoryCount]s.
  final InventoryPhysicalCount count;

  RetrieveInventoryPhysicalCountResponse({
    this.errors,
    this.count,
  });

  factory RetrieveInventoryPhysicalCountResponse.fromJson(
      Map<dynamic, dynamic> json) {
    return RetrieveInventoryPhysicalCountResponse(
      errors: json['errors'] != null
          ? (json['errors'] as List)
              .map((error) => SquareError.fromJson(error))
              .toList()
          : null,
      count: json['count'] != null
          ? InventoryPhysicalCount.fromJson(json['count'])
          : null,
    );
  }
}
