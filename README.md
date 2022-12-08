[![Pub](https://img.shields.io/pub/v/square_connect.svg?style=flat-square)](https://pub.dev/packages/square_connect)
[![GitHub](https://img.shields.io/github/license/mtwichel/square-connect-flutter-library.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library)

# Dart Client for Square APIs

This package allows Dart developers to easily interact with [Square APIs](https://developer.squareup.com/reference/square).

## NOTE!

Due to the way Square authenticates it's API, **DO NOT** use this package in Flutter apps! There is currently no supported way to securely store API tokens on the client device. This package is entirely for server-side Dart applicatations like those created with the [Dart Functions Framework](https://pub.dev/packages/functions_framework).

## Usage

1. Create Square API Client.

```dart
final client = SquareApiClient(
  accessToken: 'ACCESS_TOKEN', // Make SURE this is kept secret
  apiVersion: '2021-09-15', // Optional. If ommited latest api will be used.
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

  var responseObj = ListCustomersResponse.fromJson(json.decode(reponse));

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

If you have any feedback on how to improve the package for usablility, or bugs to report, please do so at https://github.com/morel-tech/square-connect-dart/issues.
