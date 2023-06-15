[![Pub](https://img.shields.io/pub/v/square_connect.svg?style=flat-square)](https://pub.dev/packages/square_connect)
[![GitHub](https://img.shields.io/github/license/mtwichel/square-connect-flutter-library.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library)

# Dart Client for Square APIs

This package allows Dart developers to easily interact with [Square APIs](https://developer.squareup.com/reference/square).

## NOTE!

Due to the way Square authenticates it's API, **DO NOT** use this package in Flutter apps unless using the [PKCE authentication flow](https://developer.squareup.com/docs/oauth-api/overview#pkce-flow).

## Supported APIs

| API                        | Support Level          |
| -------------------------- | ---------------------- |
| Payments                   | ⏳ Partially Supported |
| Refunds                    | ❌ Not Yet Supported   |
| Disputes                   | ❌ Not Yet Supported   |
| Checkout                   | ⏳ Partially Supported |
| Apple Pay                  | ❌ Not Yet Supported   |
| Cards                      | ⏳ Partially Supported |
| Payouts                    | ❌ Not Yet Supported   |
| Terminal                   | ❌ Not Yet Supported   |
| Orders                     | ✅ Fully Supported     |
| Order Custom Attributes    | ❌ Not Yet Supported   |
| Subscriptions              | ✅ Fully Supported     |
| Catalog                    | ⏳ Partially Supported |
| Inventory                  | ❌ Not Yet Supported   |
| Customers                  | ✅ Fully Supported     |
| Customer Custom Attributes | ❌ Not Yet Supported   |
| Customer Groups            | ❌ Not Yet Supported   |
| Customer Segments          | ❌ Not Yet Supported   |
| Loyalty                    | ✅ Fully Supported     |
| Gift Cards                 | ✅ Fully Supported     |
| Gift Card Activities       | ✅ Fully Supported     |
| Bookings                   | ❌ Not Yet Supported   |
| Booking Custom Attributes  | ❌ Not Yet Supported   |
| Merchants                  | ✅ Fully Supported     |
| Locations                  | ✅ Fully Supported     |
| Location Custom Attributes | ❌ Not Yet Supported   |
| Devices                    | ❌ Not Yet Supported   |
| Cash Drawers               | ❌ Not Yet Supported   |
| Vendors                    | ❌ Not Yet Supported   |
| Team                       | ⏳ Partially Supported |
| Labor                      | ❌ Not Yet Supported   |
| Bank Accounts              | ❌ Not Yet Supported   |
| Sites                      | ❌ Not Yet Supported   |
| Snippets                   | ❌ Not Yet Supported   |
| OAuth                      | ✅ Fully Supported     |
| Mobile Authorization       | ❌ Not Yet Supported   |
| Webhook Subscriptions      | ❌ Not Yet Supported   |

## Usage

1. Create Square API Client.

```dart
final client = SquareApiClient(
  accessToken: 'ACCESS_TOKEN', // Make SURE this is kept secret
  apiVersion: '2021-09-15', // Optional. If omitted latest api will be used.
);
```

2. Call Square APIs.

```dart
final locations = await client.listLocations();
```

### Errors

Instead of throwing errors caused by Square's API, methods return a list of errors returned by Square's API. To check if errors were thrown, you can call .hasErrors on the Response object, or simply check if the errors property is null.

**Example**

```dart
import 'package:square_connect/square_connect.dart';

async listCustomers() {
  String response = await CustomBackend.listCustomers();

  var responseObj = ListCustomersResponse.fromJson(json.decode(response));

  if (responseObj.hasErrors) {
    throw new Error(responseObj.errors)
  } else {
    return responseObj.customers;
  }
}
```

### Pagination

If pagination is supported/needed, the response object will contain a cursor string returned by Square's API. To retrieve it, you can call `response.cursor`. If the field is `null`, then no cursor exists and there are no more items to be returned. If it was not null, you can pass it into another call of the specific method.

## Contributions

If you have any feedback on how to improve the package for usability, or bugs to report, please do so at https://github.com/morel-tech/square-connect-dart/issues.

### Using Mason

This package uses [mason](https://pub.dev/packages/mason_cli) to generate new files. Run the appropriate command depending on what you want to generate, and be sure to append to the appropriate barrel file when prompted.

**Shared Model**

```bash
mason make shared_object
```

**Functions Model**

```bash
mason make function_object
```

**Webhook Model**

```bash
mason make webhook_event
```
