import 'package:json_annotation/json_annotation.dart';

/// Indicates the state of a tracked item quantity in the lifecycle of goods.
enum InventoryState {
  /// The related quantity of items are in a custom state. **READ-ONLY**
  @JsonValue('CUSTOM')
  custom,

  /// The related quantity of items are on hand and available for sale.
  @JsonValue('IN_STOCK')
  inStock,

  /// The related quantity of items were sold as part of an itemized
  /// transaction. Quantities in the `sold` state are no longer tracked.
  @JsonValue('SOLD')
  sold,

  /// The related quantity of items were returned through the Square Point of
  /// Sale application, but are not yet available for sale. **READ-ONLY**
  @JsonValue('RETURNED_BY_CUSTOMER')
  returnedByCustomer,

  /// The related quantity of items are on hand, but not currently available
  /// for sale. **READ-ONLY**
  @JsonValue('RESERVED_FOR_SALE')
  reservedForSale,

  /// The related quantity of items were sold online. **READ-ONLY**
  @JsonValue('SOLD_ONLINE')
  soldOnline,

  /// The related quantity of items were ordered from a vendor but not yet
  /// received. **READ-ONLY**
  @JsonValue('ORDERED_FROM_VENDOR')
  orderedFromVendor,

  /// The related quantity of items were received from a vendor but are not yet
  /// available for sale. **READ-ONLY**
  @JsonValue('RECEIVED_FROM_VENDOR')
  receivedFromVendor,

  /// The related quantity of items are in transit between locations.
  /// **READ-ONLY**
  @JsonValue('IN_TRANSIT_TO')
  inTransitTo,

  /// A placeholder indicating that the related quantity of items are not
  /// currently tracked in Square. Transferring quantities from the `none`
  /// state to a tracked state (e.g., `inStock`) introduces stock into the
  /// system.
  @JsonValue('NONE')
  none,

  /// The related quantity of items are lost or damaged and cannot be sold.
  @JsonValue('WASTE')
  waste,

  /// The related quantity of items were returned but not linked to a previous
  /// transaction. Unlinked returns are not tracked in Square. Transferring a
  /// quantity from `unlinkedReturn` to a tracked state (e.g., `inStock`)
  /// introduces new stock into the system.
  @JsonValue('UNLINKED_RETURN')
  unlinkedReturn,
}

/// Indicates how the inventory change was applied to a tracked quantity of
/// items.
enum InventoryChangeType {
  /// The change occurred as part of a physical count update.
  @JsonValue('PHYSICAL_COUNT')
  physicalCount,

  ///  The change occurred as part of the normal lifecycle of goods (e.g., as
  /// an inventory adjustment).
  @JsonValue('ADJUSTMENT')
  adjustment,

  /// The change occurred as part of an inventory transfer.
  @JsonValue('TRANSFER')
  transfer,
}

/// Indicates the Square product used to generate an inventory change.
enum Product {
  @JsonValue('SQUARE_POS')
  squarePos,
  @JsonValue('EXTERNAL_API')
  externalApi,
  @JsonValue('BILLING')
  billing,
  @JsonValue('APPOINTMENTS')
  appointments,
  @JsonValue('INVOICES')
  invoices,
  @JsonValue('ONLINE_STORE')
  onlineStore,
  @JsonValue('PAYROLL')
  payroll,
  @JsonValue('DASHBOARD')
  dashboard,
  @JsonValue('ITEM_LIBRARY_IMPORT')
  itemLibraryImport,
  @JsonValue('OTHER')
  other,
}
