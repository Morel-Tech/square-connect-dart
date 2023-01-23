import 'package:json_annotation/json_annotation.dart';

/// The order (e.g., chronological or alphabetical) in which results from a
/// request are returned.
enum SortOrder {
  /// The results are returned in ascending (e.g., oldest-first or A-Z) order.
  @JsonValue('ASC')
  ascending,

  /// The results are returned in descending (e.g., newest-first or Z-A) order.
  @JsonValue('DESC')
  descending,
}

extension SortOrderHelper on SortOrder {
  String toJson() {
    switch (this) {
      case SortOrder.ascending:
        return 'ASC';
      case SortOrder.descending:
        return 'DESC';
    }
  }
}
