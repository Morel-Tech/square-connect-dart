import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice_recipient_tax_ids.g.dart';

@JsonSerializable()
class InvoiceRecipientTaxIds extends Equatable {
  const InvoiceRecipientTaxIds({
    this.euVat,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceRecipientTaxIds]
  factory InvoiceRecipientTaxIds.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRecipientTaxIdsFromJson(json);

  /// Converts a [InvoiceRecipientTaxIds] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceRecipientTaxIdsToJson(this);

  /// **Read only** The EU VAT identification number for the invoice recipient.
  /// For example, `IE3426675K`.
  final String? euVat;

  @override
  List<Object?> get props => [euVat];
}
