import 'package:square_connect/src/customer/customer-enums-converter.dart';
import 'package:square_connect/square_connect.dart';

/// An object representing a customer identity. The Customer's id field is used throught the apis.
class Customer {
  /// The id for the [Customer] in guid format.
  final String id;

  /// When the [Customer] was created.
  final DateTime createdAt;

  /// When the [Customer] was last updated.
  final DateTime updatedAt;

  /// A list of the [Customer]'s cards on file.
  final List<Card> cards;

  /// The [Customer]'s given name, or first name.
  final String givenName;

  /// The [Customer]'s family name, or last name.
  final String familyName;

  /// The [Customer]'s nickname, or prefered name.
  final String nickname;

  /// The name of the [Customer]'s company.
  final String companyName;

  /// The [Customer]'s email address.
  final String emailAddress;

  /// The [Customer]'s physical address.
  final Address address;

  /// The [Customer]'s phone number.
  final String phoneNumber;

  /// The [Customer]'s birthday.
  final DateTime birthday;

  /// The [Customer]'s external reference id, from another system for example. Can be used to link customer id with another system's id.
  final String referenceId;

  /// The [Customer]'s note.
  final String note;

  /// The [Customer]'s preferences.
  final CustomerPreferences preferences;

  /// The ids and names of any customer groups the [Customer] is included in.
  final List<CustomerGroupInfo> groups;

  /// Where the  [Customer] was created.
  final CustomerCreationSource creationSource;

  Customer(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.cards,
      this.givenName,
      this.familyName,
      this.nickname,
      this.companyName,
      this.emailAddress,
      this.address,
      this.phoneNumber,
      this.birthday,
      this.referenceId,
      this.note,
      this.preferences,
      this.groups,
      this.creationSource});

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
      cards: json['cards'] != null
          ? (json['cards'] as List).map((item) => Card.fromJson(item)).toList()
          : null,
      givenName: json['given_name'],
      familyName: json['family_name'],
      nickname: json['nickname'],
      companyName: json['company_name'],
      emailAddress: json['email_address'],
      address:
          json['address'] != null ? Address.fromJson(json['address']) : null,
      phoneNumber: json['phone_number'],
      birthday:
          json['birthday'] != null ? DateTime.parse(json['birthday']) : null,
      referenceId: json['reference_id'],
      note: json['note'],
      preferences: json['preferences'] != null
          ? CustomerPreferences.fromJson(json['preferences'])
          : null,
      groups: json['groups'] != null
          ? (json['groups'] as List)
              .map((item) => CustomerGroupInfo.fromJson(item))
              .toList()
          : null,
      creationSource: json['creation_source'] != null
          ? getCustomerCreationSourceFromString(json['creation_source'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (createdAt != null) body['created_at'] = createdAt.toString();
    if (updatedAt != null) body['updated_at'] = updatedAt.toString();
    if (cards != null)
      body['cards'] = cards.map((item) => item.toJson()).toList();
    if (givenName != null) body['given_name'] = givenName;
    if (familyName != null) body['family_name'] = familyName;
    if (nickname != null) body['nickname'] = nickname;
    if (companyName != null) body['company_name'] = companyName;
    if (emailAddress != null) body['email_address'] = emailAddress;
    if (address != null) body['address'] = address.toJson();
    if (phoneNumber != null) body['phone_number'] = phoneNumber;
    if (birthday != null) body['birthday'] = birthday.toString();
    if (referenceId != null) body['reference_id'] = referenceId;
    if (note != null) body['note'] = note;
    if (preferences != null) body['preferences'] = preferences.toJson();
    if (groups != null)
      body['groups'] = groups.map((item) => item.toJson()).toList();
    if (creationSource != null)
      body['creation_source'] =
          getStringFromCustomerCreationSource(creationSource);

    return body;
  }
}

/// Represents a [Customer]'s card on file
class Card {
  /// The unique id for the [Card] on file in guid form.
  final String id;

  /// The brand of the [Card].
  final CardBrand cardBrand;

  /// The last four digits of the [Card].
  final String last4;

  /// The month the [Card] expires as an integer between 1 and 12.
  final int expMonth;

  ///  The year the [Card] expires.
  final int expYear;

  /// The name of  the cardholder.
  final String cardholderName;

  /// The billing address of the [Card].
  final Address billingAddress;

  /// A unique, Square-assigned ID that identifies the card across multiple locations and applications for a single Square account.
  final String fingerprint;

  Card(
      {this.id,
      this.cardBrand,
      this.last4,
      this.expMonth,
      this.expYear,
      this.cardholderName,
      this.billingAddress,
      this.fingerprint});

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
        id: json['id'],
        cardBrand: json['card_brand'] != null
            ? getCardBrandFromString(json['card_brand'])
            : null,
        last4: json['last_4'],
        expMonth: json['exp_month'],
        expYear: json['exp_year'],
        cardholderName: json['cardholder_name'],
        billingAddress: json['billing_address'] != null
            ? Address.fromJson(json['billing_address'])
            : null,
        fingerprint: json['fingerprint']);
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (cardBrand != null)
      body['card_brand'] = getStringFromCardBrand(cardBrand);
    if (last4 != null) body['last_4'] = last4;
    if (expMonth != null) body['exp_month'] = expMonth;
    if (expYear != null) body['exp_year'] = expYear;
    if (cardholderName != null) body['cardholder_name'] = cardholderName;
    if (billingAddress != null)
      body['billing_address'] = billingAddress.toJson();
    if (fingerprint != null) body['fingerprint'] = fingerprint;

    return body;
  }
}

/// An object representing a [Customer]'s preferences.
class CustomerPreferences {
  /// If true, the [Customer] has unsubscribed from receiving marketing campaign emails.
  final bool emailUnsubscribed;

  CustomerPreferences({this.emailUnsubscribed});

  factory CustomerPreferences.fromJson(Map<String, dynamic> json) {
    return CustomerPreferences(
      emailUnsubscribed: json['email_unsubscribed'],
    );
  }
  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (emailUnsubscribed != null)
      body['email_unsubscribed'] = emailUnsubscribed;

    return body;
  }
}

/// An object representing information about a CustomerGroup.
class CustomerGroupInfo {
  /// The id of the CustomerGroup
  final String id;

  /// The name of the CustomerGroup
  final String name;

  CustomerGroupInfo({this.id, this.name});

  factory CustomerGroupInfo.fromJson(Map<String, dynamic> json) {
    return CustomerGroupInfo(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    var body = Map<String, dynamic>();

    if (id != null) body['id'] = id;
    if (name != null) body['name'] = name;

    return body;
  }
}
