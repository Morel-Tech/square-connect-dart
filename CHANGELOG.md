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