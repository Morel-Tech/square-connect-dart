import 'dart:convert';

import 'package:square_connect/square_connect.dart';
import 'package:test/test.dart';

void main() {
  group('From JSON', () {
    group('Customer Object fromJson', () {
      const exampleCustomerObj =
          '{"id":"3PPP9N0K056MFAXRN94Y8AN8ZC","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-05-31T00:51:29Z","cards":[{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021},{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Marcus","family_name":"Twichel","email_address":"test@invalid.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"+15555555555","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","note":"This is a test note.","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"}';

      test('id parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.id, '3PPP9N0K056MFAXRN94Y8AN8ZC');
      });
      test('createdAt parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.createdAt.year, 2019);
        expect(object.createdAt.month, 3);
        expect(object.createdAt.day, 13);
        expect(object.createdAt.hour, 21);
        expect(object.createdAt.minute, 46);
        expect(object.createdAt.second, 04);
      });
      test('updatedAt parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.updatedAt.year, 2019);
        expect(object.updatedAt.month, 5);
        expect(object.updatedAt.day, 31);
        expect(object.updatedAt.hour, 0);
        expect(object.updatedAt.minute, 51);
        expect(object.updatedAt.second, 29);
      });
      test('cards parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.cards, isInstanceOf<List<Card>>());
      });
      test('givenName parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.givenName, 'Marcus');
      });
      test('familyName parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.familyName, 'Twichel');
      });
      test('nickname parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.nickname, null);
      });
      test('companyName parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.companyName, null);
      });
      test('emailAddress parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.emailAddress, 'test@invalid.com');
      });
      test('address parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.address, isInstanceOf<Address>());
      });
      test('phoneNumber parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.phoneNumber, '+15555555555');
      });
      test('birthday parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.birthday.year, 1997);
        expect(object.birthday.month, 6);
        expect(object.birthday.day, 15);
        expect(object.birthday.hour, 0);
        expect(object.birthday.minute, 0);
        expect(object.birthday.second, 0);
      });
      test('referenceId parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.referenceId, '810D7A49-6F02-4634-A468-2AF28228EAA4');
      });
      test('preferences parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.preferences, isInstanceOf<CustomerPreferences>());
      });
      test('groups parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.groups, isInstanceOf<List<CustomerGroupInfo>>());
      });
      test('creationSource parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.creationSource, CustomerCreationSource.merge);
      });
      test('note parses correctly', () {
        var object = Customer.fromJson(json.decode(exampleCustomerObj));
        expect(object.note, 'This is a test note.');
      });
    });
    group('Card Object fromJson', () {
      const exampleCardObj =
          '{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021}';

      test('id parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.id, 'ccof:Q4OtExaEudlItxpD4GB');
      });
      test('card brand parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.cardBrand, CardBrand.visa);
      });
      test('last 4 parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.last4, '3425');
      });
      test('exp month parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.expMonth, 5);
      });
      test('exp year parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.expYear, 2021);
      });
      test('cardholder name parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.cardholderName, null);
      });
      test('billing address parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.billingAddress, null);
      });
      test('fingerprint parses correctly', () {
        var object = Card.fromJson(json.decode(exampleCardObj));
        expect(object.fingerprint, null);
      });
    });
    group('Address Object fromJson', () {
      const exampleAddressObj =
          '{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"}';
      test('address line 1 parses correctly', () {
        var object = Address.fromJson(json.decode(exampleAddressObj));
        expect(object.addressLine1, '1529 Downy Rd');
      });
      test('locality parses correctly', () {
        var object = Address.fromJson(json.decode(exampleAddressObj));
        expect(object.locality, 'Laurel');
      });
      test('postal code parses correctly', () {
        var object = Address.fromJson(json.decode(exampleAddressObj));
        expect(object.postalCode, '59044');
      });
      test('address line 2 parses correctly', () {
        var object = Address.fromJson(json.decode(exampleAddressObj));
        expect(object.addressLine2, null);
      });
      test('address line 3 parses correctly', () {
        var object = Address.fromJson(json.decode(exampleAddressObj));
        expect(object.addressLine3, null);
      });
    });
  });
}
