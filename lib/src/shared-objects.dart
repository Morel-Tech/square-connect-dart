import 'dart:convert';

import 'package:square_connect/square_connect.dart';
import 'package:square_connect/src/shared-enums-converter.dart';

/// An object representing a physical address.
class Address {
  /// The first line of the address.
  /// Fields that start with address_line provide the address's most specific details, like street number, street name, and building name.
  /// They do not provide less specific details like city, state/province, or country (these details are provided in other fields).
  final String addressLine1;

  /// The second line of the address, if any.
  final String addressLine2;

  /// The third line of the address, if any.
  final String addressLine3;

  /// The city or town of the address.
  final String locality;

  /// A civil region within the address's locality, if any.
  final String sublocality;

  /// A civil region within the address's sublocality, if any.
  final String sublocality2;

  /// A civil region within the address's sublocality2, if any.
  final String sublocality3;

  /// A civil entity within the address's country. In the US, this is the state.
  final String administrativeDistrictLevel1;

  /// A civil entity within the address's administrativeDistrictLevel1. In the US, this is the county.
  final String administrativeDistrictLevel2;

  /// A civil entity within the address's administrative_district_level_2, if any.
  final String administrativeDistrictLevel3;

  /// The address's postal code.
  final String postalCode;

  /// The address's country, in ISO 3166-1-alpha-2 format.
  final String country;

  /// Optional first name when it's representing recipient.
  final String firstName;

  /// Optional last name when it's representing recipient.
  final String lastName;

  /// Optional organization name when it's representing recipient.
  final String organization;

  Address(
      {this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.locality,
      this.sublocality,
      this.sublocality2,
      this.sublocality3,
      this.administrativeDistrictLevel1,
      this.administrativeDistrictLevel2,
      this.administrativeDistrictLevel3,
      this.postalCode,
      this.country,
      this.firstName,
      this.lastName,
      this.organization});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      addressLine1: json['address_line_1'],
      addressLine2: json['address_line_2'],
      addressLine3: json['address_line_3'],
      locality: json['locality'],
      sublocality: json['sublocality'],
      sublocality2: json['sublocality_2'],
      sublocality3: json['sublocality_3'],
      administrativeDistrictLevel1: json['administrative_district_level_1'],
      administrativeDistrictLevel2: json['administrative_district_level_2'],
      administrativeDistrictLevel3: json['administrative_district_level_3'],
      postalCode: json['postal_code'],
      country: json['country'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      organization: json['organization'],
    );
  }

  String toJson() {
    Map<String, String> map = {};
    if (this.addressLine1 != null) map['address_line_1'] = this.addressLine1;
    if (this.addressLine2 != null) map['address_line_2'] = this.addressLine2;
    if (this.addressLine3 != null) map['address_line_3'] = this.addressLine3;
    if (this.locality != null) map['locality'] = this.locality;
    if (this.sublocality != null) map['sublocality'] = this.sublocality;
    if (this.sublocality2 != null) map['sublocality_2'] = this.sublocality2;
    if (this.sublocality3 != null) map['sublocality_3'] = this.sublocality3;
    if (this.administrativeDistrictLevel1 != null)
      map['administrative_district_level_1'] =
          this.administrativeDistrictLevel1;
    if (this.administrativeDistrictLevel2 != null)
      map['administrative_district_level_2'] =
          this.administrativeDistrictLevel2;
    if (this.administrativeDistrictLevel3 != null)
      map['administrative_district_level_3'] =
          this.administrativeDistrictLevel3;
    if (this.postalCode != null) map['postal_code'] = this.postalCode;
    if (this.country != null) map['country'] = this.country;
    if (this.firstName != null) map['first_name'] = this.firstName;
    if (this.lastName != null) map['last_name'] = this.lastName;
    if (this.organization != null) map['organization'] = this.organization;
    return json.encode(map);
  }
}

/// An object representing an amount of money.
class Money {
  /// The amount of money, in the smallest denomination of the currency indicated by currency. For example, when currency is USD, amount is in cents. **NOTE:** Amount MUST be positive.
  final int amount;

  /// The type of currency.
  final Currency currency;

  Money({this.amount, this.currency})
      : assert(amount != null),
        assert(amount >= 0),
        assert(currency != null);

  factory Money.fromJson(Map<String, dynamic> json) {
    return Money(
        amount: json['amount'],
        currency: getCurrencyFromString(json['currency']));
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': getStringFromCurrency(currency),
    };
  }
}

/// An object representing and error generated from any Square APIs.
class SquareError {
  /// The category this [Error] belongs to.
  final ErrorCategory category;

  /// The [Error]'s specific code.
  final String code;

  /// The human-readable description of the [Error].
  final String detail;

  /// The name of the field provided in the original request that the error pertains to, if any.
  final String field;

  SquareError({this.category, this.code, this.detail, this.field});

  factory SquareError.fromJson(Map<String, dynamic> json) {
    return SquareError(
      category: getErrorCategoryFromString(json['category']),
      code: json['code'],
      detail: json['detail'],
      field: json['field'],
    );
  }

  @override
  String toString() {
    return 'ERROR OF TYPE ${getStringFromErrorCategory(category)}: $code on field $field \n\n\t Detail: $detail';
  }
}

/// An object representing a method of payment used in a [Transaction].
class Tender {
  final String id;
  final String locationId;
  final String transactionId;
  final DateTime createdAt;
  final String note;
  final Money amountMoney;
  final Money tipMoney;
  final Money processingFeeMoney;
  final String customerId;
  final TenderCardDetails cardDetails;
  final TenderCashDetails cashDetails;
  final List<AdditionalRecipient> additionalRecipients;

  Tender(
      {this.id,
      this.locationId,
      this.transactionId,
      this.createdAt,
      this.note,
      this.amountMoney,
      this.tipMoney,
      this.processingFeeMoney,
      this.customerId,
      this.cardDetails,
      this.cashDetails,
      this.additionalRecipients});

  factory Tender.fromJson(Map<String, dynamic> json) {
    return Tender(
      id: json['id'],
      locationId: json['location_id'],
      transactionId: json['transaction_id'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      note: json['note'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      tipMoney:
          json['tip_money'] != null ? Money.fromJson(json['tip_money']) : null,
      processingFeeMoney: json['processing_fee_money'] != null
          ? Money.fromJson(json['processing_fee_money'])
          : null,
      customerId: json['customer_id'],
      cardDetails: json['card_details'] != null
          ? TenderCardDetails.fromJson(json['card_details'])
          : null,
      cashDetails: json['cash_details'] != null
          ? TenderCashDetails.fromJson(json['cash_details'])
          : null,
      additionalRecipients: json['additional_recipients'] != null
          ? (json['additional_recipients'] as List)
              .map((item) => AdditionalRecipient.fromJson(item))
              .toList()
          : null,
    );
  }
}

/// An object representing additional details of a tender with `type` `CARD` or `SQUARE_GIFT_CARD`.
class TenderCardDetails {
  final TenderCardDetailsStatus status;
  final Card card;
  final TenderCardDetailsEntryMethod entryMethod;

  TenderCardDetails({this.status, this.card, this.entryMethod});

  factory TenderCardDetails.fromJson(Map<String, dynamic> json) {
    return TenderCardDetails(
      status: json['status'] != null
          ? getTenderCardDetailsStatusFromString(json['status'])
          : null,
      card: json['card'] != null ? Card.fromJson(json['card']) : null,
      entryMethod: json['entry_method'] != null
          ? getTenderCardDetailsEntryMethodFromString(json['entry_method'])
          : null,
    );
  }
}

/// An object representing the details of a tender with `type` `CASH`.
class TenderCashDetails {
  final Money buyerTenderedMoney;
  final Money changeBackMoney;

  TenderCashDetails({this.buyerTenderedMoney, this.changeBackMoney});

  factory TenderCashDetails.fromJson(Map<String, dynamic> json) {
    return TenderCashDetails(
      buyerTenderedMoney: json['buyer_tendered_money'] != null
          ? Money.fromJson(json['buyer_tendered_money'])
          : null,
      changeBackMoney: json['change_back_money'] != null
          ? Money.fromJson(json['change_back_money'])
          : null,
    );
  }
}

/// An object representing an additional recipient (other than the merchant) receiving a portion of this tender.
class AdditionalRecipient {
  final String locationId;
  final String description;
  final Money amountMoney;
  final String receivableId;

  AdditionalRecipient(
      {this.locationId, this.description, this.amountMoney, this.receivableId});

  factory AdditionalRecipient.fromJson(Map<String, dynamic> json) {
    return AdditionalRecipient(
      locationId: json['location_id'],
      description: json['description'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      receivableId: json['receivable_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location_id': locationId,
      'description': description,
      'amount_money': amountMoney.toJson(),
      'receivable_id': receivableId,
    };
  }
}

/// An object representing a refund processed for a Square transaction.
class Refund {
  final String id;
  final String locationId;
  final String transactionId;
  final String tenderId;
  final DateTime createdAt;
  final String reason;
  final Money amountMoney;
  final RefundStatus status;
  final Money processingFeeMoney;
  final List<AdditionalRecipient> additionalRecipients;

  Refund(
      {this.id,
      this.locationId,
      this.transactionId,
      this.tenderId,
      this.createdAt,
      this.reason,
      this.amountMoney,
      this.status,
      this.processingFeeMoney,
      this.additionalRecipients});

  factory Refund.fromJson(Map<String, dynamic> json) {
    return Refund(
      id: json['id'],
      locationId: json['location_id'],
      transactionId: json['transaction_id'],
      tenderId: json['tender_id'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      reason: json['reason'],
      amountMoney: json['amount_money'] != null
          ? Money.fromJson(json['amount_money'])
          : null,
      status: json['status'] != null
          ? getRefundStatusFromString(json['status'])
          : null,
      processingFeeMoney: json['processing_fee_money'] != null
          ? Money.fromJson(json['processing_fee_money'])
          : null,
      additionalRecipients: json['additional_recipients'] != null
          ? (json['additional_recipients'] as List)
              .map((item) => AdditionalRecipient.fromJson(item))
              .toList()
          : null,
    );
  }
}

class TimeRange {
  final DateTime startAt;
  final DateTime endAt;

  TimeRange({this.startAt, this.endAt});

  TimeRange.create({this.startAt, this.endAt});

  factory TimeRange.fromJson(Map<String, dynamic> json) {
    return TimeRange(
      startAt:
          json['start_at'] != null ? DateTime.parse(json['start_at']) : null,
      endAt: json['end_at'] != null ? DateTime.parse(json['end_at']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'start_at': startAt.toIso8601String(),
      'end_at': endAt.toIso8601String(),
    };
  }
}

class DateRange {
  final SquareDate startDate;
  final SquareDate endDate;

  DateRange({this.startDate, this.endDate});

  factory DateRange.fromJson(Map<String, dynamic> json) {
    return DateRange(
      startDate: json['start_date'] != null
          ? SquareDate.parse(json['start_date'])
          : null,
      endDate:
          json['end_date'] != null ? SquareDate.parse(json['end_date']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'start_date': startDate.toString(),
      'end_date': endDate.toString(),
    };
  }
}

/// An object representing a generic time of day devoid of date.
class SquareTimeOfDay {
  /// Hours starting in ranges 0-23.
  final int hours;

  /// Minutes starting in ranges 0-59.
  final int minutes;

  /// Seconds starting in ranges 0-59.
  final int seconds;

  SquareTimeOfDay(this.hours, this.minutes, this.seconds);

  /// Returns String using partial-time RFC3339 format.
  String toString() {
    return '${this.hours < 10 ? '0' + this.hours.toString() : this.hours}:${this.minutes < 10 ? '0' + this.minutes.toString() : this.minutes}:${this.seconds < 10 ? '0' + this.seconds.toString() : this.seconds}';
  }

  /// Returns String in hH:mM AM/PM format.
  get niceString =>
      '${this.amPmHour}:${this.minutes < 10 ? '0' + this.minutes.toString() : this.minutes} ${this.isAm ? 'AM' : 'PM'}';

  /// Creates SquareTimeOfDay from partial-time RFC3339 format.
  factory SquareTimeOfDay.parse(String input) {
    if (RegExp(r"[0-9][0-9]:[0-9][0-9]:[0-9][0-9]").hasMatch(input)) {
      return SquareTimeOfDay(int.parse(input.substring(0, 2)),
          int.parse(input.substring(3, 5)), int.parse(input.substring(6)));
    } else if (RegExp(r"[0-9][0-9]:[0-9][0-9]").hasMatch(input)) {
      return SquareTimeOfDay(int.parse(input.substring(0, 2)),
          int.parse(input.substring(3, 5)), 0);
    } else {
      throw ArgumentError.value(input, input, 'input is invalid time of day');
    }
  }

  /// Creates SquareTimeOfDay from a DateTime object. Pulls hours, minutes, and seconds from Datetime and ignores the rest.
  factory SquareTimeOfDay.fromDateTime(DateTime dateTime) {
    return SquareTimeOfDay(dateTime.hour, dateTime.minute, dateTime.second);
  }

  /// Converts to DateTime with year, month, and day being 0
  DateTime toDateTime() {
    return DateTime(
      0,
      0,
      0,
      this.hours,
      this.minutes,
      this.seconds,
    );
  }

  bool get isAm => hours < 12;
  bool get isPm => hours >= 12;
  int get amPmHour => this.isPm ? this.hours - 12 : this.hours;
}

/// An object representing a generic time of day devoid of date.
class SquareDate {
  /// Year of the date.
  final int year;

  /// Month in range 0-11.
  final int month;

  /// Days starting in range 0-31.
  final int day;

  SquareDate(this.year, this.month, this.day);

  /// Returns String using partial-time RFC3339 format.
  String toString() {
    return '${this.year}-${this.month < 10 ? '0' + this.month.toString() : this.month}-${this.day < 10 ? '0' + this.day.toString() : this.day}';
  }

  /// Returns String in dD/mM/YYYY format.
  get niceString => '${this.day}/${this.month}/${this.year}';

  /// Creates SquareTimeOfDay from partial-time RFC3339 format.
  factory SquareDate.parse(String input) {
    if (RegExp(r"[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]").hasMatch(input)) {
      return SquareDate(int.parse(input.substring(0, 4)),
          int.parse(input.substring(5, 7)), int.parse(input.substring(8)));
    } else {
      throw ArgumentError.value(input, input, 'input is invalid date');
    }
  }

  /// Creates SquareDate from a DateTime object. Pulls year, month, and days from Datetime and ignores the rest.
  factory SquareDate.fromDateTime(DateTime dateTime) {
    return SquareDate(dateTime.year, dateTime.minute, dateTime.day);
  }

  /// Converts to DateTime with year, month, and day being 0
  DateTime toDateTime() {
    return DateTime(
      this.year,
      this.month,
      this.day,
      0,
      0,
      0,
    );
  }
}
