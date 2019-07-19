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