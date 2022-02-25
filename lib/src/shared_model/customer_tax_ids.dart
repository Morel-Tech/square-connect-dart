import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_tax_ids.g.dart';

@JsonSerializable()
class CustomerTaxIds extends Equatable {
  const CustomerTaxIds({
    this.euVat,
  });

  /// Converts a [Map] to an [CustomerTaxIds]
  factory CustomerTaxIds.fromJson(Map<String, dynamic> json) =>
      _$CustomerTaxIdsFromJson(json);

  /// Converts a [CustomerTaxIds] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerTaxIdsToJson(this);

  /// The EU VAT identification number for the customer. For example,
  /// IE3426675K. The ID can contain alphanumeric characters only.
  final String? euVat;

  @override
  List<Object?> get props => [euVat];
}
