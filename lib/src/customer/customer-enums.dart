/// Inicates a brand of credit card or gift card.
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

/// Inicates the means by which a customer was created.
enum CustomerCreationSource {
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

/// Inidcates the fields customers can be sorted by.
enum CustomerSortField {
  defaultSort,
  createdAt,
}

