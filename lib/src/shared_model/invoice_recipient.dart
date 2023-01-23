import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_recipient.g.dart';

@JsonSerializable()
class InvoiceRecipient extends Equatable {
  const InvoiceRecipient({
    this.address,
    this.companyName,
    this.customerId,
    this.emailAddress,
    this.familyName,
    this.givenName,
    this.phoneNumber,
    this.taxIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceRecipient]
  factory InvoiceRecipient.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRecipientFromJson(json);

  /// Converts a [InvoiceRecipient] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceRecipientToJson(this);

  /// **Read only** The recipient's physical address.
  final Address? address;

  /// **Read only** The name of the recipient's company.
  final String? companyName;

  /// The ID of the customer. This is the customer profile ID that you provide
  /// when creating a draft invoice.
  final String? customerId;

  /// **Read only** The recipient's email address.
  final String? emailAddress;

  /// **Read only** The recipient's family (that is, last) name.
  final String? familyName;

  /// **Read only** The recipient's given (that is, first) name.
  final String? givenName;

  /// **Read only** The recipient's phone number.
  final String? phoneNumber;

  /// **Read only** The recipient's tax IDs. The country of the seller account
  /// determines whether this field is available for the customer.
  final InvoiceRecipientTaxIds? taxIds;

  @override
  List<Object?> get props => [
        address,
        companyName,
        customerId,
        emailAddress,
        familyName,
        givenName,
        phoneNumber,
        taxIds,
      ];
}
