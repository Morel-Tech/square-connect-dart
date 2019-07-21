import 'package:square_connect/square_connect.dart';

const _mapStringtoInventoryState = {
  'CUSTOM': InventoryState.custom,
  'IN_STOCK': InventoryState.inStock,
  'SOLD': InventoryState.inStock,
  'RETURNED_BY_CUSTOMER': InventoryState.inStock,
  'RESERVED_FOR_SALE': InventoryState.inStock,
  'SOLD_ONLINE': InventoryState.inStock,
  'ORDERED_FROM_VENDOR': InventoryState.inStock,
  'RECEIVED_FROM_VENDOR': InventoryState.inStock,
  'IN_TRANSIT_TO': InventoryState.inStock,
  'NONE': InventoryState.inStock,
  'WASTE': InventoryState.inStock,
  'UNLINKED_RETURN': InventoryState.inStock,
};

InventoryState getInventoryStateFromString(String input) =>
    _mapStringtoInventoryState[input];
String getStringFromInventoryState(InventoryState input) =>
    _mapStringtoInventoryState.keys
        .singleWhere((value) => _mapStringtoInventoryState[value] == input);

const _mapStringtoInventoryChangeType = {
  'PHYSICAL_COUNT': InventoryChangeType.physicalCount,
  'ADJUSTMENT': InventoryChangeType.adjustment,
  'TRANSFER': InventoryChangeType.transfer,
};

InventoryChangeType getInventoryChangeTypeFromString(String input) =>
    _mapStringtoInventoryChangeType[input];
String getStringFromInventoryChangeType(InventoryChangeType input) =>
    _mapStringtoInventoryChangeType.keys
        .singleWhere((value) => _mapStringtoInventoryChangeType[value] == input);

const _mapStringtoProduct = {
  'SQUARE_POS': Product.squarePos,
  'EXTERNAL_API': Product.externalApi,
  'BILLING': Product.billing,
  'APPOINTMENTS': Product.appointments,
  'INVOICES': Product.invoices,
  'ONLINE_STORE': Product.onlineStore,
  'PAYROLL': Product.payroll,
  'DASHBOARD': Product.dashboard,
  'ITEM_LIBRARY_IMPORT': Product.itemLibraryImport,
  'OTHER': Product.other,
};

Product getProductFromString(String input) =>
    _mapStringtoProduct[input];
String getStringFromProduct(Product input) =>
    _mapStringtoProduct.keys
        .singleWhere((value) => _mapStringtoProduct[value] == input);