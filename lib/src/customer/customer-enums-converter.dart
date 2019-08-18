import 'package:square_connect/square_connect.dart';
import 'package:square_in_app_payments/models.dart' as inapp;

const _mapStringtoCardBrand = {
  'OTHER_BRAND': CardBrand.otherBrand,
  'VISA': CardBrand.visa,
  'MASTERCARD': CardBrand.mastercard,
  'AMERICAN_EXPRESS': CardBrand.americanExpress,
  'DISCOVER': CardBrand.discover,
  'DISCOVER_DINERS': CardBrand.discoverDiners,
  'JCB': CardBrand.jcb,
  'CHINA_UNIONPAY': CardBrand.chinaUnionpay,
  'SQUARE_GIFT_CARD': CardBrand.squareGiftCard,
};

CardBrand getCardBrandFromString(String input) => _mapStringtoCardBrand[input];
String getStringFromCardBrand(CardBrand input) => _mapStringtoCardBrand.keys
    .singleWhere((value) => _mapStringtoCardBrand[value] == input);

const _mapCardBrandToInAppCardBrand = {
  CardBrand.otherBrand: inapp.Brand.otherBrand,
  CardBrand.visa: inapp.Brand.visa,
  CardBrand.mastercard: inapp.Brand.mastercard,
  CardBrand.americanExpress: inapp.Brand.americanExpress,
  CardBrand.discover: inapp.Brand.discover,
  CardBrand.discoverDiners: inapp.Brand.discoverDiners,
  CardBrand.jcb: inapp.Brand.jcb,
  CardBrand.chinaUnionpay: inapp.Brand.chinaUnionPay,
};

inapp.Brand getInAppCardBrandFromCardBrand(CardBrand input) => _mapCardBrandToInAppCardBrand[input];
CardBrand getCardBrandFromInAppCardBrand(inapp.Brand input) => _mapCardBrandToInAppCardBrand.keys
    .singleWhere((value) => _mapCardBrandToInAppCardBrand[value] == input);

const _mapStringtoCustomerCreationSource = {
  'OTHER': CustomerCreationSource.other,
  'APPOINTMENTS': CustomerCreationSource.appointments,
  'COUPON': CustomerCreationSource.coupon,
  'DELETION_RECOVERY': CustomerCreationSource.deletionRecovery,
  'DIRECTORY': CustomerCreationSource.directory,
  'EGIFTING': CustomerCreationSource.eGifting,
  'EMAIL_COLLECTION': CustomerCreationSource.emailCollection,
  'FEEDBACK': CustomerCreationSource.feedback,
  'IMPORT': CustomerCreationSource.import,
  'INVOICES': CustomerCreationSource.invoices,
  'LOYALTY': CustomerCreationSource.loyalty,
  'MARKETING': CustomerCreationSource.marketing,
  'MERGE': CustomerCreationSource.merge,
  'ONLINE_STORE': CustomerCreationSource.onlineStore,
  'INSTANT_PROFILE': CustomerCreationSource.instantProfile,
  'TERMINAL': CustomerCreationSource.terminal,
  'THIRD_PARTY': CustomerCreationSource.thirdParty,
  'THIRD_PARTY_IMPORT': CustomerCreationSource.thirdPartyImport,
  'UNMERGE_RECOVERY': CustomerCreationSource.unmergeRecovery,
};

CustomerCreationSource getCustomerCreationSourceFromString(String input) =>
    _mapStringtoCustomerCreationSource[input];
String getStringFromCustomerCreationSource(CustomerCreationSource input) =>
    _mapStringtoCustomerCreationSource.keys.singleWhere(
        (value) => _mapStringtoCustomerCreationSource[value] == input);

const _mapStringtoCustomerSortField = {
  'DEFAULT': CustomerSortField.defaultSort,
  'CREATED_AT': CustomerSortField.createdAt,
};

CustomerSortField getCustomerSortFieldFromString(String input) =>
    _mapStringtoCustomerSortField[input];
String getStringFromCustomerSortField(CustomerSortField input) =>
    _mapStringtoCustomerSortField.keys
        .singleWhere((value) => _mapStringtoCustomerSortField[value] == input);
