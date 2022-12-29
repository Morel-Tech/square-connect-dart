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

  final String? orderId;
  final String? locationId;
  final int? version;

  @override
  List<Object?> get props => [orderId, locationId, version];
}
