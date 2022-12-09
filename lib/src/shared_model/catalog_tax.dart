import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_tax.g.dart';

@JsonSerializable()
class CatalogTax extends Equatable {
  const CatalogTax({
    this.name,
    this.calculationPhase,
    this.inclusionType,
    this.percentage,
    this.appliesToCustomAmounts,
    this.enabled,
  });

  /// Converts a [Map] to an [CatalogTax]
  factory CatalogTax.fromJson(Map<String, dynamic> json) =>
      _$CatalogTaxFromJson(json);

  /// Converts a [CatalogTax] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogTaxToJson(this);

  final String? name;
  final TaxCalculationPhase? calculationPhase;
  final TaxInclusionType? inclusionType;
  final String? percentage;
  final bool? appliesToCustomAmounts;
  final bool? enabled;

  @override
  List<Object?> get props {
    return [
      name,
      calculationPhase,
      inclusionType,
      percentage,
      appliesToCustomAmounts,
      enabled,
    ];
  }
}
