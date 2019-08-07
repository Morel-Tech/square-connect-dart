import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:mockito/mockito.dart';

import 'square_connect_test.dart';

void main () {
    group('Customer API', () {
    group('methods', () {
      group('Create Customer Method', () {
        test(
            'returns a CreateCustomerResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"customer":{"id":"MDXEF6NVGWWTD34WKTBKAC4QJ0","created_at":"2019-07-09T22:28:12.795Z","updated_at":"2019-07-09T22:28:13Z","given_name":"Tester","family_name":"McTesterson","phone_number":"+5555555555","preferences":{"email_unsubscribed":false},"creation_source":"THIRD_PARTY"}}';

          when(httpClient.post('https://connect.squareup.com/v2/customers',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body:
                      '{"given_name":"Tester","family_name":"McTesterson","phone_number":"+15555555555","idempotency_key":"key"}'))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.createCustomer(
              givenName: 'Tester',
              familyName: 'McTesterson',
              phoneNumber: '+15555555555',
              idempotencyKey: 'key');
          expect(item, isInstanceOf<CreateCustomerResponse>());
          expect(item.customer, isInstanceOf<Customer>());
          expect(item.errors, null);
        });

        test(
            'returns a CreateCustomerResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"BAD_REQUEST","detail":"At least one of `given_name`, `family_name`, `company_name`, `email_address`, or `phone_number` is required for a customer."}]}';

          when(httpClient.post('https://connect.squareup.com/v2/customers',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body:
                      '{"given_name":"Tester","family_name":"McTesterson","phone_number":"+15555555555","idempotency_key":"key"}'))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.createCustomer(
              givenName: 'Tester',
              familyName: 'McTesterson',
              phoneNumber: '+15555555555',
              idempotencyKey: 'key');
          expect(item, isInstanceOf<CreateCustomerResponse>());
          expect(item.customer, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Create Customer Card Method', () {
        test(
            'returns a CreateCustomerCardResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"card":{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021}}';

          when(httpClient.post(
                  'https://connect.squareup.com/v2/customers/fake-customer-id/cards',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body: '{"card_nonce":"fake-nonce"}'))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.createCustomerCard(
              customerId: 'fake-customer-id', cardNonce: 'fake-nonce');
          expect(item, isInstanceOf<CreateCustomerCardResponse>());
          expect(item.card, isInstanceOf<Card>());
          expect(item.errors, null);
        });

        test(
            'returns a CreateCustomerCardResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `fake-id` not found."}]}';

          when(httpClient.post(
                  'https://connect.squareup.com/v2/customers/fake-customer-id/cards',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body: '{"card_nonce":"fake-nonce"}'))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.createCustomerCard(
              customerId: 'fake-customer-id', cardNonce: 'fake-nonce');
          expect(item, isInstanceOf<CreateCustomerCardResponse>());
          expect(item.card, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Delete Customer Method', () {
        test(
            'returns a DeleteCustomerResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{ }';

          when(httpClient.delete(
                  'https://connect.squareup.com/v2/customers/fake-customer-id',
                  headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi
              .deleteCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<DeleteCustomerResponse>());
          expect(item.errors, null);
        });

        test(
            'returns a DeleteCustomerResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `8MVM30V46N23N31FSYK12E7JNM` not found."}]}';

          when(httpClient.delete(
                  'https://connect.squareup.com/v2/customers/fake-customer-id',
                  headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi
              .deleteCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<DeleteCustomerResponse>());
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Delete Customer Card Method', () {
        test(
            'returns a DeleteCustomerCardResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{ }';

          when(httpClient.delete(
              'https://connect.squareup.com/v2/customers/fake-customer-id/cards/fake-card-id',
              headers: {
                'Authorization': 'Bearer fake-token'
              })).thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.deleteCustomerCard(
              customerId: 'fake-customer-id', cardId: 'fake-card-id');
          expect(item, isInstanceOf<DeleteCustomerCardResponse>());
          expect(item.errors, null);
        });

        test(
            'returns a DeleteCustomerCardResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `8MVM30V46N23N31FSYK12E7JNM` not found."}]}';

          when(httpClient.delete(
              'https://connect.squareup.com/v2/customers/fake-customer-id/cards/fake-card-id',
              headers: {
                'Authorization': 'Bearer fake-token'
              })).thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi.deleteCustomerCard(
              customerId: 'fake-customer-id', cardId: 'fake-card-id');
          expect(item, isInstanceOf<DeleteCustomerCardResponse>());
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('List Customers Method', () {
        test(
            'returns a ListCustomerResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"customers":[{"id":"H00AXCWB8N7JAX97DV65B0CJKW","created_at":"2019-02-22T18:29:29.89Z","updated_at":"2019-02-22T18:38:09Z","given_name":"Brett","family_name":"Bastien","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.CHURN_RISK","name":"Lapsed"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"KS1WFD41ZX49MHXK2F5M3T3QRW","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Brittanny","family_name":"Reule","company_name":"City Brew Coffee","email_address":"test@invalid.com","address":{"address_line_1":"1102 Denway Place","locality":"Billings","postal_code":"59105"},"phone_number":"+15555555555","birthday":"1988-02-08T00:00:00-00:00","reference_id":"F8EF86A6-ADCC-4CE8-8BD7-A4A33526E17B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"XGTWWNNZXD4Y0J5Z3AZZF8R8H8","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Chrissy","family_name":"OMalley","email_address":"chrissyh@citybrew.com","address":{"address_line_1":"PO Box 1159","locality":"Billings","postal_code":"59102"},"phone_number":"+15555555555","birthday":"1983-04-16T00:00:00-00:00","reference_id":"88D4863C-60BC-4CDA-B7A7-661A744CC1A6","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"IMPORT"},{"id":"CWVMEY9WSX4C6HD32827CRE1YM","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:52Z","given_name":"Dave","family_name":"SACCO","email_address":"saccoslc@aol.com","address":{"postal_code":"84124"},"phone_number":"+15555555555","birthday":"0000-09-14T00:00:00-00:00","reference_id":"A7707900-5A5D-4452-99B1-0212D71BCE10","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"XATN8RDVVS3V8JJZYBFWEADA1C","created_at":"2019-03-22T17:36:11.879Z","updated_at":"2019-05-23T17:39:17Z","given_name":"Jennifer","family_name":"Stanton","email_address":"test@invalid.com","address":{"address_line_1":"1061 Strawberry Avenue","locality":"Billings","postal_code":"59104"},"phone_number":"+15555555555","birthday":"0000-12-23T00:00:00-00:00","reference_id":"0A526F55-27F8-4826-BDE6-388A2EB8D51F","note":"This is a test note.","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"33DF2ME28H7X6HNKCZ3J529820","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:52Z","given_name":"Kate","family_name":"Guerrero","company_name":"City Brew Coffee","email_address":"test@invalid.com","address":{"address_line_1":"2223 Hewitt Dr","locality":"Billings","postal_code":"59101"},"phone_number":"+15555555555","birthday":"1988-11-21T00:00:00-00:00","reference_id":"D5C262B4-73AD-4FE2-BE31-9C88BE189B4B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"3PPP9N0K056MFAXRN94Y8AN8ZC","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-05-31T00:51:29Z","cards":[{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021},{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Marcus","family_name":"Twichel","email_address":"test@invalid.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"+15555555555","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","note":"// Merged on 2019/05/23. Following fields were not transferred to the current cu/ Merged on 2019/05/31. Following fields were not transferred to the current customone Number: 4068122951","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"Q800392NG34TY124AY1XMRDV155MFS0","created_at":"2019-03-13T21:29:29.997Z","updated_at":"2019-03-13T21:29:30Z","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"LOYALTY"},{"id":"T34SCF6KH93WJTVP6ZMZD4S6T4","created_at":"2019-05-31T03:42:11.914Z","updated_at":"2019-05-31T03:42:12Z","preferences":{"email_unsubscribed":false},"groups":[{"id":"gv2:R8GSXE47MX23YS0DEE7M1C8GFW","name":"Instant Profile"}],"creation_source":"INSTANT_PROFILE"}]}';

          when(httpClient.get('https://connect.squareup.com/v2/customers',
                  headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.listCustomers();
          expect(item, isInstanceOf<ListCustomersResponse>());
          expect(item.cursor, null);
          expect(item.customers, isInstanceOf<List<Customer>>());
          expect(item.errors, null);
        });

        test(
            'returns a ListCustomerResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"INVALID_CURSOR","detail":"The provided cursor `asdfjl` was not found.","field":"cursor"}]}';

          when(httpClient.get('https://connect.squareup.com/v2/customers',
                  headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi.listCustomers();
          expect(item, isInstanceOf<ListCustomersResponse>());
          expect(item.cursor, null);
          expect(item.customers, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Retrieve Customer Method', () {
        test(
            'returns a RetrieveCustomerResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"customer":{"id":"fake-customer-id","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-05-31T00:51:29Z","cards":[{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Marcus","family_name":"Twichel","email_address":"test@invalid.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"+15555555555","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","note":"// Merged on 2019/05/23. Following fields were not transferred to the current customer:Phone Number: 4065181287// Merged on 2019/05/31. Following fields were not transferred to the current customer:Phone Number: 4068122951","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"}}';

          when(httpClient.get(
                  'https://connect.squareup.com/v2/customers/fake-customer-id',
                  headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi
              .retrieveCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<RetrieveCustomerResponse>());
          expect(item.customer, isInstanceOf<Customer>());
          expect(item.errors, null);
        });

        test(
            'returns a RetrieveCustomerResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `fake-id` not found."}]}';

          when(httpClient.get(
                  'https://connect.squareup.com/v2/customers/fake-customer-id',
                  headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi
              .retrieveCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<RetrieveCustomerResponse>());
          expect(item.customer, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Search Customer Method', () {
        test(
            'returns a SearchCustomersResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"customers":[{"id":"H00AXCWB8N7JAX97DV65B0CJKW","created_at":"2019-02-22T18:29:29.89Z","updated_at":"2019-02-22T18:38:09Z","given_name":"Brett","family_name":"Bastien","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.CHURN_RISK","name":"Lapsed"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"Q800392NG34TY124AY1XMRDV155MFS0","created_at":"2019-03-13T21:29:29.997Z","updated_at":"2019-03-13T21:29:30Z","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"LOYALTY"},{"id":"KS1WFD41ZX49MHXK2F5M3T3QRW","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Brittanny","family_name":"Reule","company_name":"City Brew Coffee","email_address":"test@invalid.com","address":{"address_line_1":"1102 Denway Place","locality":"Billings","postal_code":"59105"},"phone_number":"+15555555555","birthday":"1988-02-08T00:00:00-00:00","reference_id":"F8EF86A6-ADCC-4CE8-8BD7-A4A33526E17B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"XGTWWNNZXD4Y0J5Z3AZZF8R8H8","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Chrissy","family_name":"OMalley","email_address":"test@invalid.com","address":{"address_line_1":"PO Box 1159","locality":"Billings","postal_code":"59102"},"phone_number":"+15555555555","birthday":"1983-04-16T00:00:00-00:00","reference_id":"88D4863C-60BC-4CDA-B7A7-661A744CC1A6","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"IMPORT"},{"id":"33DF2ME28H7X6HNKCZ3J529820","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:52Z","given_name":"Kate","family_name":"Guerrero","company_name":"City Brew Coffee","email_address":"kater@citybrew.com","address":{"address_line_1":"2223 Hewitt Dr","locality":"Billings","postal_code":"59101"},"phone_number":"+15555555555","birthday":"1988-11-21T00:00:00-00:00","reference_id":"D5C262B4-73AD-4FE2-BE31-9C88BE189B4B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"}],"cursor":"Cg0wU0c5QzM4N0RYME1OElEIBRIkcjowU0c5QzM4N0RYME1OLjlDVjdaREs5S04zNzJXV0g7bzo1KAFAAWgImgEgCBWigwELCIDo0NTCy98CEACqgwELCIDojrCSkOMCEAAaBggBEAFYAQ=="}';

          when(httpClient.post(
                  'https://connect.squareup.com/v2/customers/search',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body:
                      '{"limit":5,"query":{"filter":{"created_at":{"start_at":"2019-01-01T07:00:00.000Z","end_at":"2019-06-30T06:00:00.000Z"}},"sort":{"field":"CREATED_AT","order":"ASC"}}}'))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.searchCustomers(
              limit: 5,
              sortField: CustomerSortField.createdAt,
              sortOrder: SortOrder.ascending,
              createdAt: TimeRange(
                  startAt: DateTime(2019, 1, 1), endAt: DateTime(2019, 6, 30)));
          expect(item, isInstanceOf<SearchCustomersResponse>());
          expect(item.customers, isInstanceOf<List<Customer>>());
          expect(item.cursor,
              'Cg0wU0c5QzM4N0RYME1OElEIBRIkcjowU0c5QzM4N0RYME1OLjlDVjdaREs5S04zNzJXV0g7bzo1KAFAAWgImgEgCBWigwELCIDo0NTCy98CEACqgwELCIDojrCSkOMCEAAaBggBEAFYAQ==');
          expect(item.errors, null);
        });

        test(
            'returns a SearchCustomersResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"INVALID_ENUM_VALUE","detail":"`ASCS` is not a valid enum value for `query.sort.order`.","field":"query.sort.order"}]}';

          when(httpClient.post(
                  'https://connect.squareup.com/v2/customers/search',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body:
                      '{"limit":5,"query":{"filter":{"created_at":{"start_at":"2019-01-01T07:00:00.000Z","end_at":"2019-06-30T06:00:00.000Z"}},"sort":{"field":"CREATED_AT","order":"ASC"}}}'))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.searchCustomers(
              limit: 5,
              sortField: CustomerSortField.createdAt,
              sortOrder: SortOrder.ascending,
              createdAt: TimeRange(
                  startAt: DateTime(2019, 1, 1), endAt: DateTime(2019, 6, 30)));
          expect(item, isInstanceOf<SearchCustomersResponse>());
          expect(item.customers, null);
          expect(item.cursor, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Update Customer Method', () {
        test(
            'returns a UpdateCustomerResponse if the http call completes successfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"customer":{"id":"3PPP9N0K056MFAXRN94Y8AN8ZC","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-07-09T19:22:31Z","cards":[{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Tester","family_name":"Twichel","email_address":"marcust@citybrew.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"406-518-1287","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"}}';

          when(httpClient.put(
                  'https://connect.squareup.com/v2/customers/fake-cust-id',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body: '{"given_name":"Tester","note":"This is a test note"}'))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.updateCustomer(
              customerId: 'fake-cust-id',
              givenName: 'Tester',
              note: 'This is a test note');
          expect(item, isInstanceOf<UpdateCustomerResponse>());
          expect(item.customer, isInstanceOf<Customer>());
          expect(item.errors, null);
        });

        test(
            'returns a UpdateCustomerResponse with errors if the http call completes unsuccesfully',
            () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response =
              '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `3PPP9N0K056MFAXRN94Y8AN8Z` not found."}]}';

          when(httpClient.put(
                  'https://connect.squareup.com/v2/customers/fake-cust-id',
                  headers: {'Authorization': 'Bearer fake-token'},
                  body: '{"given_name":"Tester","note":"This is a test note"}'))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.updateCustomer(
              customerId: 'fake-cust-id',
              givenName: 'Tester',
              note: 'This is a test note');
          expect(item, isInstanceOf<UpdateCustomerResponse>());
          expect(item.customer, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
    });
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
  });
}