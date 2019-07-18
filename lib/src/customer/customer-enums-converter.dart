import 'package:square_connect/square_connect.dart';

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


CardBrand getCardBrandFromString(String input) =>
    _mapStringtoCardBrand[input];
String getStringFromCardBrand(CardBrand input) =>
    _mapStringtoCardBrand.keys
        .singleWhere((value) => _mapStringtoCardBrand[value] == input);

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
    _mapStringtoCustomerCreationSource.keys
        .singleWhere((value) => _mapStringtoCustomerCreationSource[value] == input);

const _mapStringtoCustomerSortField = {
  'DEFAULT': CustomerSortField.defaultSort,
  'CREATED_AT': CustomerSortField.createdAt,
};

CustomerSortField getCustomerSortFieldFromString(String input) =>
    _mapStringtoCustomerSortField[input];
String getStringFromCustomerSortField(CustomerSortField input) =>
    _mapStringtoCustomerSortField.keys
        .singleWhere((value) => _mapStringtoCustomerSortField[value] == input);