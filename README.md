[![Pub](https://img.shields.io/pub/v/square_connect.svg?style=flat-square)](https://pub.dev/packages/square_connect)
[![GitHub](https://img.shields.io/github/license/mtwichel/square-connect-flutter-library.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library)
# Square Connect Flutter

This project is a wip extending the Square Connect APIs. You can learn more about them here https://developer.squareup.com/docs/api/connect/v2. At the moment, the CatalogAPI, CustomersAPI, LocationsAPI, OrdersAPI, TransactionsAPI, and EmployeesAPI are implemented.

## Getting Started

First, ensure you've added the dependency to your project
```yaml
dependencies:
    square-connect: <latest-version>
```

## Initialize

Start by getting an instance of the SquareConnect client

```dart
var client = SquareConnect.instance;
```

Then set two config options:

**REQUIRED** First, enter your developer token. You can find this at https://developer.squareup.com/apps. (More/better authentication options planned for the future).

```dart
client.setAuthToken(token: 'YOUR-TOKEN-HERE');
```

**ALTERNATIVELY** You can combine the `.instance` and the `setAuthToken(token)` to one call that does both, which is often more 
convenient.

```dart
client.getInstanceWithToken('YOUR-TOKEN-HERE');
```

**OPTIONAL** Second, you may add a different HttpClient to use. By defauly, the IOClient is used (the object that flutter needs to make http calls). This is useful for testing (you can enter a Mock client) or using BrowserClient if developing for web.

```dart
var httpClient = BrowserClient();
client.setAuthToken(client: httpClient);
```

**ADITIONAL TIP** If using Flutter, and excelent strategy is to use the [Provider](https://pub.dev/packages/provider) package to manage the SquareConnect client. You can initalize like so :
```dart
Provider<SquareConnect>.value(
  value: SquareConnect.getInstanceWithToken('YOUR-TOKEN-HERE'),
  child: MaterialApp(
    home: Home(),
  )
)
```
and then retrieve anywhere in the widget tree like so:
```dart
Provider.of<SquareConnect>(context).xxxApi.someMethod();
```
This way, you only need to enter your token once, and you can use the same client anywhere your app. Of course, you could use a `MultiProvider` intead if you had multiple items to provide.

## Usage
Now that you have a SquareConnect client set up, you can access it's methods. The seperate APIs are contained in their own objects for better organization. For example, to access the Catalog API, you can use:
```dart
client.catalogApi.methodHere();
```
### Errors
Instead of throwing errors caused by Square's API, methods return a list of errors returned by Square's API. To check if errors were thrown, you can call .hasErrors on the Response object, or simply check if the errors property is null.

**Example**
```dart
var response = await client.catalogApi.retrieveCatalogObject(objectId: 'fake-obj-id');
if (response.hasErrors) {
  // at least 1 error occured
  response.errors.forEach((error) => print(error.detail));
} else {
  // no errors occured, you can access your payload
  var object = response.object;
}
```

### Pagination
On methods that support it, you can paginate your calls. On some calls, there are hard limits to how many items can be returned (eg. `listCatalog()` can return 200 objects by default). You can programatically find limits with the `getCatalogInfo()` method.

If pagination is supported/needed, the response will contain a cursor string returned by Square's API. To retrieve it, you can call `response.cursor`. If the field is `null`, then no cursor exists and there are no more items to be returned. If it was not null, you can pass it into another call of the specific method.

Of course you can use this cursor for lazy loading or write a recursive function to get all objects either time. We build the pagination exactly as Square implements it to allow for flexibility.

**Example**
```dart
List<CatalogObject> listOfObjects = [];

var firstResponse = await client.catalogApi.listCatalogObjects();
if (firstResponse.cursor != null) {
  // Max elements for this call, but there are more to return
  listOfObjects.addAll(firstResponse.objects);
  
  var secondResponse = await client.catalogApi.listCatalogObjects(cursor: firstResponse.cursor);
  if (secondResponse.cursor != null) {
    // could go on more, could write function recursivly
    
  } else {
    // All the elements have been returned
    listOfObjects.addAll(secondResponse.objects);
  }
}
```

## Methods Supported (for more info, see API documentation, and Square's documentation [here](https://developer.squareup.com/docs/api/connect/v2)):
## Catalog API (SquareConnect.catalogApi)
Method | Description
--- | ---
`listCatalog(types, cursor)` | Gets all catalog objects, can filter with specifying types list and pagination support.
`retrieveCatalogObject(objectId, includeRelatedObjects)` | Gets specified catalog object by id.
`deleteCatalogObject(objectId)` | Deletes secified catalog object by id.
`batchDeleteCatalogObjects(objectIds)` | Batch deletes catalog objects from list of ids.
`getCatalogInfo()` | Gets metadata about catalog.
`searchCatalogObjects(various inputs)` | Seaches catalog objects in a variety of ways. See documentation.

## Customer API (SquareConnect.customerApi)
Method | Description
--- | ---
`createCustomer(various inputs)` | Creates a customer object with specified information and returns the created customer.
`createCustomerCard(customerId, card inputs)` | Creates a card on file for specified customer and returns the created card.
`deleteCustomer(customerId)` | Deletes secified customer object by id.
`deleteCustomerCard(customerId, cardId)` | Deletes secified card on file belonging to customer by id.
`listCustomers(cursor, sortField, sortOrder)` | Lists customers by optional cursor, sort field, and sort order.
`retrieveCustomer(customerId)` | Retrieves customer object by id.
`searchCustomers(various query inputs, cursor, limit)` | Searches for customer by filters and sorts, as well as cursor and limit.
`updateCustomer(customerId, various inputs)` | Updates specified customer object (by id) and returns the created customer.

## Locations API (SquareConnect.locationsApi)
Method | Description
--- | ---
`listLocations()` | Lists all a merchant's locations.

## Orders API (SquareConnect.locationsApi)
Method | Description
--- | ---
`createOrder(various inputs)` | Creates and order from Catalog ids. Custom line items not yet supported.
`searchOrders(various inputs)` | Searches for orders with different filter and sorting options.
`batchRetrieveOrders(locationId, orderIds)` | Retrieves one or more orders given their Order ID.

## Transactions API (SquareConnect.locationsApi)
Method | Description
--- | ---
`captureTransaction(locationId, transactionId)` | Fully processes `Transaction` when `deloyCapture` is set to true in the `charge()` method.
`charge(various inputs)` | Charges a card represented by a card nonce or a customer's card on file.
`createRefund(various inputs)` | Retrieves one or more orders given their Order ID.
`listRefunds(various inputs)` | Lists refunds for one of a business's locations.
`listTransactions(various inputs)` | Lists transactions for a particular location.
`retrieveTransaction(locationId, transactionId)` | Retrieves details for a single transaction.
`listRefunds(various inputs)` | Cancels a `Transaction` that was created with the `charge()` method with a `delayCapture` value of `true`.

## Employees API (SquareConnect.locationsApi)
Method | Description
--- | ---
`listEmployees(locationId, status, limit, cursor,)` | Gets a list of `Employee` objects for a business.
`retrieveEmployee(employeeId)` | Gets an `Employee` from Employee Id.
