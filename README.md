[![Pub](https://img.shields.io/pub/v/square_connect.svg?style=flat-square)](https://pub.dev/packages/square_connect)
[![GitHub](https://img.shields.io/github/license/mtwichel/square-connect-flutter-library.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/mtwichel/square-connect-flutter-library)
# Square Connect Flutter

This project is a wip extending the Square Connect APIs. You can learn more about them here https://developer.squareup.com/docs/api/connect/v2.

## What is it?

### The past
This package has recently pivoted directions due to security concerns in previous iterations. In the past, this package worked by sending HTTP requests directly from a device through Flutter, which **you should NOT do**. This is because **you should not store your API key in your mobile app under any circumstances!**. Both myself and Square put lots of time trying to figure out how to securly store your API key on device; no matter how you do it, there are security problems.

### What can this package be used for now?
This package is still useful for developing with Square and Flutter in my experience. It serves nicely as great wrapper for all the data objects and enums that Square uses in their APIs. This gives you native Dart objects for Customers, Orders, and more.

## Usage

Every call avalible to you in Square's set of APIs has a defined response object. For example, the List Refunds endpoint has an associated class called `ListCustomersResponse`. Every response object has supports error handling and cursors when appropriate (see below). Here's the process to use the API:

1. Set up server backend to handle requests from Flutter and send requests to Square APIs
2. Send response from Square API back to Flutter device.
3. Parse response using `json.decode()`
4. Pass decode results into `Enpoint'sRepsonseObject.fromJson()`

**Example**

```dart
import 'package:square_connect/square_connect.dart';

async listCustomers() {
  String response = await CustomBackend.listCustomers();

  var responseObj = ListCustomersResponse.fromJson(json.decode(reponse));

  return responseObj.customers;
}
```

### Alternate Usage

If  you don't want to parse an entire API reponse on the Flutter end, you can still get native Dart objects! Every object, from Customers to Orders, have a `.fromJson()` method and `.toJson()` method. Thus, you can send those data objects directly from your back end and parse them individually. The freedom is in your hands!

**Where this could be useful**
- Perhaps you want to handle errors from Square on the server, and send a reponse back to Flutter only when you have a finished successful call. That way you could skip all the error handling in the Request object
- Alternatively, maybe you want to combine individual calls from Square using cursors on the server side, and send the full response to Flutter. Then, you wounldn't have to worry about cursors in you Flutter code
- Finally, you can combine calls on the server side and send the raw data to Flutter. Maybe you want to retrieve locations and orders on the server, then send both payloads in one response back to Flutter. This is a way you could do that!

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
If you have any feedback on how to improve the package for usablility, or bugs to report, please do so at https://github.com/mtwichel/square-connect-flutter-library/issues.