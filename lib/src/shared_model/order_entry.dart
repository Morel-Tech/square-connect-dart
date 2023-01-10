import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_entry.g.dart';

@JsonSerializable()
class OrderEntry extends Equatable {
  const OrderEntry({
    this.orderId,
    this.locationId,
    this.version,
  });

  /// Converts a [Map] to an [OrderEntry]
  factory OrderEntry.fromJson(Map<String, dynamic> json) =>
      _$OrderEntryFromJson(json);

  /// Converts a [OrderEntry] to a [Map]
  Map<String, dynamic> toJson() => _$OrderEntryToJson(this);

  /// The ID of the order.
  final String? orderId;

  /// The location ID the order belongs to.
  final String? locationId;

  /// Read only The version number, which is incremented each time an update
  /// is committed to the order. Orders that were not created through the API
  /// do not include a version number and therefore cannot be updated.
  final int? version;

  @override
  List<Object?> get props => [orderId, locationId, version];
}
