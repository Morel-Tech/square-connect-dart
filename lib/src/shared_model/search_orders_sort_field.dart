import 'package:json_annotation/json_annotation.dart';

enum SearchOrdersSortField {
  /// The time when the order was created, in RFC-3339 format.
  /// If you are also filtering for a time range in this query, you must
  /// set the `CREATED_AT` field in your `DateTimeFilter`.
  @JsonValue('CREATED_AT')
  createdAt,

  /// The time when the order last updated, in RFC-3339 format. If you are
  /// also filtering for a time range in this query, you must set the
  /// `UPDATED_AT` field in your `DateTimeFilter`.
  @JsonValue('UPDATED_AT')
  updatedAt,

  /// The time when the order was closed, in RFC-3339 format. If you use this
  /// value, you must also set a `StateFilter` with closed states. If you are
  /// also filtering for a time range in this query, you must set the
  /// `CLOSED_AT` field in your `DateTimeFilter`.
  @JsonValue('CLOSED_AT')
  closedAt,
}
