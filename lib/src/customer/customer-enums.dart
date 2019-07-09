enum CardBrand {
  otherBrand,
  visa,
  mastercard,
  americanExpress,
  discover,
  discoverDiners,
  jcb,
  chinaUnionpay,
  squareGiftCard,
}

const _mapStringToCardBrand = {
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

CardBrand getCardBrandFromString(String input) {
  var ans = _mapStringToCardBrand[input];
  if (ans == null) throw ArgumentError.value(input, 'input',
        'Input must be a valid CardBrand in SCREAMING_UPPERCASE');
  return ans;
}

enum CustomerCreationSource{
  other,
  appointments,
  coupon,
  deletionRecovery,
  directory,
  eGifting,
  emailCollection,
  feedback,
  import,
  invoices,
  loyalty,
  marketing,
  merge,
  onlineStore,
  instantProfile,
  terminal,
  thirdParty,
  thirdPartyImport,
  unmergeRecovery,
}

const _mapStringToCustomerCreationSource = {
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

CustomerCreationSource getCustomerCreationSourceFromString(String input) {
  var ans = _mapStringToCustomerCreationSource[input];
  if (ans == null) throw ArgumentError.value(input, 'input',
        'Input must be a valid CustomerCreationSource in SCREAMING_UPPERCASE');
  return ans;
}

String getStringFromCustomerCreationSource(CustomerCreationSource source) {
  return _mapStringToCustomerCreationSource.keys.singleWhere((key) => _mapStringToCustomerCreationSource[key] == source);
}

enum SortOrder {
  ascending,
  descending,
}

const _mapStringToSortOrder = {
  'ASC': SortOrder.ascending,
  'DESC': SortOrder.descending,
};

SortOrder getSortOrderFromString(String input) {
  var ans = _mapStringToSortOrder[input];
  if (ans == null) throw ArgumentError.value(input, 'input',
        'Input must be a valid SortOrder in SCREAMING_UPPERCASE');
  return ans;
}

String getStringFromSortOrder(SortOrder order) {
  return _mapStringToSortOrder.keys.singleWhere((key) => _mapStringToSortOrder[key] == order);
}

enum CustomerSortField {
  defaultSort,
  createdAt,
}

const _mapStringToCustomerSortField = {
  'DEFAULT': CustomerSortField.defaultSort,
  'CREATED_AT': CustomerSortField.createdAt,
};

CustomerSortField getCustomerSortFieldFromString(String input) {
  var ans = _mapStringToCustomerSortField[input];
  if (ans == null) throw ArgumentError.value(input, 'input',
        'Input must be a valid CustomerSortField in SCREAMING_UPPERCASE');
  return ans;
}

String getStringFromCustomerSortField(CustomerSortField order) {
  return _mapStringToCustomerSortField.keys.singleWhere((key) => _mapStringToCustomerSortField[key] == order);
}