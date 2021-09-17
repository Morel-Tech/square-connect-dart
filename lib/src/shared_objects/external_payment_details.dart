import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'external_payment_details.g.dart';

/// {@template external_payment_details}
/// Stores details about an external payment.
/// Contains only non-confidential information. For more information, see Take
/// External Payments.
/// {@endtemplate}
@JsonSerializable()
class ExternalPaymentDetails extends Equatable {
  /// @macro {@macro external_payment_details}
  const ExternalPaymentDetails({
    required this.source,
    required this.type,
    this.sourceFeeMoney,
    this.sourceId,
  });

  /// Converts a [Map] to an [ExternalPaymentDetails]
  factory ExternalPaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$ExternalPaymentDetailsFromJson(json);

  /// Converts a [ExternalPaymentDetails] to a [Map]
  Map<String, dynamic> toJson() => _$ExternalPaymentDetailsToJson(this);

  /// A description of the external payment source. For example, "Food Delivery
  /// Service".
  final String source;

  /// The type of external payment the seller received. It can be one of the
  /// following:
  /// CHECK - Paid using a physical check.
  /// BANK_TRANSFER - Paid using external bank transfer.
  /// OTHER_GIFT_CARD - Paid using a non-Square gift card.
  /// CRYPTO - Paid using a crypto currency.
  /// SQUARE_CASH - Paid using Square Cash App.
  /// SOCIAL - Paid using peer-to-peer payment applications.
  /// EXTERNAL - A third-party application gathered this payment outside of
  /// Square.
  /// EMONEY - Paid using an E-money provider.
  /// CARD - A credit or debit card that Square does not support.
  /// STORED_BALANCE - Use for house accounts, store credit, and so forth.
  /// OTHER - A type not listed here.
  final String type;

  /// The fees paid to the source. The amount_money minus this field is the net
  /// amount seller receives.
  final Money? sourceFeeMoney;

  /// An ID to associate the payment to its originating source.
  final String? sourceId;

  @override
  List<Object?> get props => [source, type, sourceFeeMoney, sourceId];
}
