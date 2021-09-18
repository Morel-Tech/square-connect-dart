import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'card.g.dart';

/// {@template card}
/// Reflects the current status of a card payment.
/// {@endtemplate}
@JsonSerializable()
class Card extends Equatable {
  /// @macro {@macro card}
  const Card({
    this.id,
    this.billingAddress,
    this.bin,
    this.cardBrand,
    this.cardType,
    this.cardholderName,
    this.customerId,
    this.enabled,
    this.expMonth,
    this.expYear,
    this.fingerprint,
    this.last_4,
    this.prepaidType,
    this.referenceId,
    this.version,
  });

  /// Converts a [Map] to an [Card]
  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  /// Converts a [Card] to a [Map]
  Map<String, dynamic> toJson() => _$CardToJson(this);

  /// Read only Unique ID for this card. Generated by Square.
  final String? id;

  /// The billing address for this card.
  final Address? billingAddress;

  /// Read only The first six digits of the card number, known as the Bank
  /// Identification Number (BIN). Only the Payments API returns this field.
  final String? bin;

  /// Read only The card's brand.
  final CardBrand? cardBrand;

  /// Read only The card's brand.
  final CardBrand? cardType;

  /// The name of the cardholder.
  final String? cardholderName;

  /// The ID of a customer created using the Customers API to be associated
  /// with the card.
  final String? customerId;

  /// Read only Indicates whether or not a card can be used for payments.
  final bool? enabled;

  /// The expiration month of the associated card as an integer between 1 and
  /// 12.
  final int? expMonth;

  /// The four-digit year of the card's expiration date.
  final int? expYear;

  /// Read only Not currently set. Intended as a Square-assigned identifier,
  /// based on the card number, to identify the card across multiple locations
  /// within a single application.
  final String? fingerprint;

  /// Read only The last 4 digits of the card number.
  final String? last_4;

  /// Read only Indicates whether the Card is prepaid or not. The Card object
  /// includes this field only in response to Payments API calls.
  final CardPrepaidType? prepaidType;

  /// An optional user-defined reference ID that associates this card with
  /// another entity in an external system. For example, a customer ID from an
  /// external customer management system.
  final String? referenceId;

  /// Current version number of the card. Increments with each card update.
  /// Requests to update an existing Card object will be rejected unless the
  /// version in the request matches the current version for the Card.
  final int? version;

  @override
  List<Object?> get props {
    return [
      id,
      billingAddress,
      bin,
      cardBrand,
      cardType,
      cardholderName,
      customerId,
      enabled,
      expMonth,
      expYear,
      fingerprint,
      last_4,
      prepaidType,
      referenceId,
      version,
    ];
  }
}

/// Indicates a card's brand, such as VISA or MASTERCARD.
enum CardBrand {
  /// Card brand of type otherBrand
  @JsonValue('OTHER_BRAND')
  otherBrand,

  /// Card brand of type visa
  @JsonValue('VISA')
  visa,

  /// Card brand of type mastercard
  @JsonValue('MASTERCARD')
  mastercard,

  /// Card brand of type americanExpress
  @JsonValue('AMERICAN_EXPRESS')
  americanExpress,

  /// Card brand of type discover
  @JsonValue('DISCOVER')
  discover,

  /// Card brand of type discoverDiners
  @JsonValue('DISCOVER_DINERS')
  discoverDiners,

  /// Card brand of type jcb
  @JsonValue('JCB')
  jcb,

  /// Card brand of type chinaUnionpay
  @JsonValue('CHINA_UNIONPAY')
  chinaUnionpay,

  /// Card brand of type squareGiftCard
  @JsonValue('SQUARE_GIFT_CARD')
  squareGiftCard,

  /// Card brand of type squareCapitalCard
  @JsonValue('SQUARE_CAPITAL_CARD')
  squareCapitalCard,

  /// Card brand of type interac
  @JsonValue('INTERAC')
  interac,

  /// Card brand of type eftpos
  @JsonValue('EFTPOS')
  eftpos,

  /// Card brand of type felica
  @JsonValue('FELICA')
  felica,

  /// Card brand of type ebt
  @JsonValue('EBT')
  ebt,
}

/// Indicates a card's type, such as CREDIT or DEBIT.
enum CardType {
  /// Card type of unknownCardType
  @JsonValue('UNKNOWN_CARD_TYPE')
  unknownCardType,

  /// Card type of credit
  @JsonValue('CREDIT')
  credit,

  /// Card type of debit
  @JsonValue('DEBIT')
  debit,
}

/// Indicates a card's prepaid type, such as NOT_PREPAID or PREPAID.
enum CardPrepaidType {
  /// Prepaid type of unknown_prepaid_type
  @JsonValue('UNKNOWN_PREPAID_TYPE')
  unknownPrepaidType,

  /// Prepaid type of not_prepaid
  @JsonValue('NOT_PREPAID')
  notPrepaid,

  /// Prepaid type of prepaid
  @JsonValue('PREPAID')
  prepaid,
}