## 1.1.0
* Removed Flutter from the dependencies. This will allow to use the package as a pure Dart library (i.e. backend or AngularDart).

## 1.0.1
* Removing Android and iOS folder as they aren't needed for this package.

## 1.0.0
* **Big Changes in Direction on Package**, so I'm designating 1.0.0.
* I suggest you read the updated readme, but TL;DR
    * There were some serious security concerns from Square on previous package implementation around storing your API key on the device. It belongs on a server you control.
    * There is now no support for calling API functions directly from this package
    * This also means no support for creating an instance of the API.
    * It's primary purpose is a library of native Dart objects that mirror the conceptual objects used in the Square API.
    * You can create these objects by specifiying `ObjectName.fromJson(response)`
* If you have feedback on these changes, feel free to create an issue on https://github.com/mtwichel/square-connect-flutter-library/issues, or send them to marcust@citybrew.com

## 0.2.6
* Fixed some bugs in Payments API
* Removed InApp payments (and all realted converter methods) from this project as it was causing configuration problems.

## 0.2.5+4
*  Fixed bug in CatalogItem

## 0.2.5+3
*  Fixed bug in UpdateOrder - changed from POST request to PUT

## 0.2.5+2
*  Fixed bug in UpdateOrder

## 0.2.5+1
*  Fixed bug in UpdateOrder

## 0.2.5
*  Added Refunds API and Payments API
    * Initial implementation. Still needs documentation and tests.
* Added changes to Orders API from 8/14 update
    * Added `payOrder()` and `updateOrder()` methods, as well as shippment fulfillemnt type.
* **BREAKING CHANGE:** Deprecated `FulfillmentRequest` and renamed input in `createOrder()` to `fulfillemntRequest`. `fulfillment` property now refers to a `OrderFulfillment` object.
* Added a `Card` factory method from In App Payments `Card`.

## 0.2.4
*  Added toJson() methods to every data object so they can easily be saved in formats that require simple maps, such as Cloud Firestore. Can be converted back with fromJson().
*  Added autoCompleteDuration, prepTimeDuration, and pickupWindowDuration to FulfillmentRequest.

## 0.2.3+2
*  Fixed bug in hasErrors method in new response superclass

## 0.2.3+1
*  Fixed bug in BatchRetrieveCatalogObjectsResponse

## 0.2.3
* Added full implementation of the Inventory API
    * Still needs documentation and testing
* Refactored how response objects work behind the scenes
* Not code related, but added a bunch more to the github projects, including some issues for direction on helping.

## 0.2.2
* Added auth methods to help with OAuth and Reader SDK methods:
    * Use `SquareConnect().getAuthEndpoint(clientId, permissions, locale, session, state)` to get the url for requesting permissions for OAuth.
    * Use `SquareConnect().createMobileAuthorizationCode(locationId)` to get Mobile Auth Code.

## 0.2.1
* Added option for using refresh tokens instead of auth token - consider this beta at this point.
    * To use, call SquareConnect.getInstanceWithRefreshToken(refreshToken, clientId, clientSecret)
    * **Make Sure You Secure Your Client Secret!**
* Removed cursor from Requst Obj helper funciton. Won't change any API, just makes things simplier to maintain.


## 0.2.0
* Adding full implementation for Labor API.
    * Still need tests and documentation.
* Finished out CatalogApi methods.
* Added timerange and durations where appropriate.

## 0.1.3
* Adding full implementation for Employees API.
    * Still needs tests.
    * Added documentation to Transactions API.

## 0.1.2
* Adding full implementation for Transactions API.
    * Still needs documentation and tests.

## 0.1.1
* Adding more documentation.
* Fixing scope issues for some enums.
* Initial work behind the scenes for Transactions API.

## 0.1.0
* WooHoo first major release!!!
    * This doesn't mean the package is anywhere near complete, but the direction seems clear and now it's time to plug and chug.
    * Still missing many API endpoints, documentation on a few items, and testing on lots of items.
* Added a bunch of documentation
* Refactored enums
    * Converter methods are now out of public facing API scope
    * Now only the enums themselves will be accessible through the API
* Added shared enums and shared objects
    * This shouldn't affect public facing API, just internally making general things easier to find
* Moved Api Objects into documenation scope
    * There should now be documentation of API methods in the docs
    * Also made tokens and clients private so they cannot be accessed once set
* Added and optional SquareConnect constructor that allows you to input token when you get your instance
    * The method is `SquareConnect.getInstanceWithToken(String token)`
* Added `periodsAsMap` to [BusinessHours] object in [LocationsApi] to easily get periods grouped into days of the week.
* Various minor improvements throughout

## 0.0.12
* Adding on by default and ordinal to modifier

## 0.0.11
* small fixes to Catalog Object parsing

## 0.0.10
* inital implementing Create Orders API

## 0.0.9
* Added initial work on implementing Orders API

## 0.0.8
* Added .hasErrors to Response objects for easier error handeling
* Added `searchCatalogObjects()` method
    * Still needs tests and documentation

## 0.0.7
* Minor changes to Locations API

## 0.0.6
* Added full support for Locations API
    * Missing test suite
    * Full functionality for all functions
    * Missing full documentation

## 0.0.5
* Added full support for Customer API!
    * Full test suite
    * Full functionality for all functions
    * Missing full documentation

## 0.0.4
* Added some formating on multiple files

## 0.0.3
* Fixed return type on lots of methods

## 0.0.2
* Added android and ios folders

## 0.0.1
* Initial Release
* Initial framework decisions and implementaion of most of the Catalog API