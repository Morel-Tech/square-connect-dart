/// Indicates the state of a tracked item quantity in the lifecycle of goods.
enum InventoryState {
  /// The related quantity of items are in a custom state. **READ-ONLY**
  custom,

  /// The related quantity of items are on hand and available for sale.
  inStock,

  /// The related quantity of items were sold as part of an itemized transaction. Quantities in the `sold` state are no longer tracked.
  sold,

  /// The related quantity of items were returned through the Square Point of Sale application, but are not yet available for sale. **READ-ONLY**
  returnedByCustomer,

  /// The related quantity of items are on hand, but not currently available for sale. **READ-ONLY**
  reservedForSale,

  /// The related quantity of items were sold online. **READ-ONLY**
  soldOnline,

  /// The related quantity of items were ordered from a vendor but not yet received. **READ-ONLY**
  orderedFromVendor,

  /// The related quantity of items were received from a vendor but are not yet available for sale. **READ-ONLY**
  receivedFromVendor,

  /// The related quantity of items are in transit between locations. **READ-ONLY**
  inTransitTo,

  /// A placeholder indicating that the related quantity of items are not currently tracked in Square. Transferring quantities from the `none` state to a tracked state (e.g., `inStock`) introduces stock into the system.
  none,

  /// The related quantity of items are lost or damaged and cannot be sold.
  waste,

  /// The related quantity of items were returned but not linked to a previous transaction. Unlinked returns are not tracked in Square. Transferring a quantity from `unlinkedReturn` to a tracked state (e.g., `inStock`) introduces new stock into the system.
  unlinkedReturn,
}

/// Indicates how the inventory change was applied to a tracked quantity of items.
enum InventoryChangeType {
  /// The change occurred as part of a physical count update.
  physicalCount,

  ///  The change occurred as part of the normal lifecycle of goods (e.g., as an inventory adjustment).
  adjustment,

  /// The change occurred as part of an inventory transfer.
  transfer,
}

/// Indicates the Square product used to generate an inventory change.
enum Product {
  squarePos,
  externalApi,
  billing,
  appointments,
  invoices,
  onlineStore,
  payroll,
  dashboard,
  itemLibraryImport,
  other,
}
