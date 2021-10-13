import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'order_quantity_unit.g.dart';

@JsonSerializable()
class OrderQuantityUnit extends Equatable {
  const OrderQuantityUnit({
    this.measurementUnit,
    this.precision,
    this.catalogObjectId,
    this.catalogVersion,
  });

  /// Converts a [Map] to an [OrderQuantityUnit]
  factory OrderQuantityUnit.fromJson(Map<String, dynamic> json) =>
      _$OrderQuantityUnitFromJson(json);

  /// Converts a [OrderQuantityUnit] to a [Map]
  Map<String, dynamic> toJson() => _$OrderQuantityUnitToJson(this);

  final MeasurementUnit? measurementUnit;
  final int? precision;
  final int? catalogVersion;
  final String? catalogObjectId;

  @override
  List<Object?> get props => [
        measurementUnit,
        precision,
        catalogObjectId,
        catalogVersion,
      ];
}
