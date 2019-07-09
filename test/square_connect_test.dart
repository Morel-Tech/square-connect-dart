import 'dart:convert'; 

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:mockito/mockito.dart';

void main() {

  group('Square Connect Basics', () {
    
  });

  group('Customer API', () {
    group('methods', () {
      group('Create Customer Method', () {
        test('returns a CreateCustomerResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"customer":{"id":"MDXEF6NVGWWTD34WKTBKAC4QJ0","created_at":"2019-07-09T22:28:12.795Z","updated_at":"2019-07-09T22:28:13Z","given_name":"Tester","family_name":"McTesterson","phone_number":"+5555555555","preferences":{"email_unsubscribed":false},"creation_source":"THIRD_PARTY"}}';

          when(httpClient.post('https://connect.squareup.com/v2/customers', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.createCustomer(givenName: 'Tester', familyName: 'McTesterson', phoneNumber: '+15555555555');
          expect(item, isInstanceOf<CreateCustomerResponse>());
          expect(item.customer, isInstanceOf<Customer>());
          expect(item.errors, null);
        });

        test('returns a CreateCustomerResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"BAD_REQUEST","detail":"At least one of `given_name`, `family_name`, `company_name`, `email_address`, or `phone_number` is required for a customer."}]}';

          when(httpClient.post('https://connect.squareup.com/v2/customers', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.createCustomer();
          expect(item, isInstanceOf<CreateCustomerResponse>());
          expect(item.customer, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Create Customer Card Method', () {
        test('returns a CreateCustomerCardResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"card":{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021}}';

          when(httpClient.post('https://connect.squareup.com/v2/customers/fake-customer-id/cards', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.createCustomerCard(customerId: 'fake-customer-id', cardNonce: 'fake-nonce');
          expect(item, isInstanceOf<CreateCustomerCardResponse>());
          expect(item.card, isInstanceOf<Card>());
          expect(item.errors, null);
        });

        test('returns a CreateCustomerCardResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `fake-id` not found."}]}';

          when(httpClient.post('https://connect.squareup.com/v2/customers/fake-customer-id/cards', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.createCustomerCard(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<CreateCustomerCardResponse>());
          expect(item.card, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Delete Customer Method', () {
        test('returns a DeleteCustomerResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{ }';

          when(httpClient.delete('https://connect.squareup.com/v2/customers/fake-customer-id', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.deleteCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<DeleteCustomerResponse>());
          expect(item.errors, null);
        });

        test('returns a DeleteCustomerResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `8MVM30V46N23N31FSYK12E7JNM` not found."}]}';

          when(httpClient.delete('https://connect.squareup.com/v2/customers/fake-customer-id', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi.deleteCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<DeleteCustomerResponse>());
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Delete Customer Card Method', () {
        test('returns a DeleteCustomerCardResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{ }';

          when(httpClient.delete('https://connect.squareup.com/v2/customers/fake-customer-id/cards/fake-card-id', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.deleteCustomerCard(customerId: 'fake-customer-id', cardId: 'fake-card-id');
          expect(item, isInstanceOf<DeleteCustomerCardResponse>());
          expect(item.errors, null);
        });

        test('returns a DeleteCustomerCardResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `8MVM30V46N23N31FSYK12E7JNM` not found."}]}';

          when(httpClient.delete('https://connect.squareup.com/v2/customers/fake-customer-id/cards/fake-card-id', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi.deleteCustomerCard(customerId: 'fake-customer-id', cardId: 'fake-card-id');
          expect(item, isInstanceOf<DeleteCustomerCardResponse>());
          expect(item.errors, isInstanceOf<List<SquareError>>());
        }); 
      });
      group('List Customers Method', () {
        test('returns a ListCustomerResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"customers":[{"id":"H00AXCWB8N7JAX97DV65B0CJKW","created_at":"2019-02-22T18:29:29.89Z","updated_at":"2019-02-22T18:38:09Z","given_name":"Brett","family_name":"Bastien","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.CHURN_RISK","name":"Lapsed"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"KS1WFD41ZX49MHXK2F5M3T3QRW","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Brittanny","family_name":"Reule","company_name":"City Brew Coffee","email_address":"test@invalid.com","address":{"address_line_1":"1102 Denway Place","locality":"Billings","postal_code":"59105"},"phone_number":"+15555555555","birthday":"1988-02-08T00:00:00-00:00","reference_id":"F8EF86A6-ADCC-4CE8-8BD7-A4A33526E17B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"XGTWWNNZXD4Y0J5Z3AZZF8R8H8","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Chrissy","family_name":"OMalley","email_address":"chrissyh@citybrew.com","address":{"address_line_1":"PO Box 1159","locality":"Billings","postal_code":"59102"},"phone_number":"+15555555555","birthday":"1983-04-16T00:00:00-00:00","reference_id":"88D4863C-60BC-4CDA-B7A7-661A744CC1A6","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"IMPORT"},{"id":"CWVMEY9WSX4C6HD32827CRE1YM","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:52Z","given_name":"Dave","family_name":"SACCO","email_address":"saccoslc@aol.com","address":{"postal_code":"84124"},"phone_number":"+15555555555","birthday":"0000-09-14T00:00:00-00:00","reference_id":"A7707900-5A5D-4452-99B1-0212D71BCE10","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"XATN8RDVVS3V8JJZYBFWEADA1C","created_at":"2019-03-22T17:36:11.879Z","updated_at":"2019-05-23T17:39:17Z","given_name":"Jennifer","family_name":"Stanton","email_address":"test@invalid.com","address":{"address_line_1":"1061 Strawberry Avenue","locality":"Billings","postal_code":"59104"},"phone_number":"+15555555555","birthday":"0000-12-23T00:00:00-00:00","reference_id":"0A526F55-27F8-4826-BDE6-388A2EB8D51F","note":"This is a test note.","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"33DF2ME28H7X6HNKCZ3J529820","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:52Z","given_name":"Kate","family_name":"Guerrero","company_name":"City Brew Coffee","email_address":"test@invalid.com","address":{"address_line_1":"2223 Hewitt Dr","locality":"Billings","postal_code":"59101"},"phone_number":"+15555555555","birthday":"1988-11-21T00:00:00-00:00","reference_id":"D5C262B4-73AD-4FE2-BE31-9C88BE189B4B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"3PPP9N0K056MFAXRN94Y8AN8ZC","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-05-31T00:51:29Z","cards":[{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021},{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Marcus","family_name":"Twichel","email_address":"test@invalid.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"+15555555555","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","note":"// Merged on 2019/05/23. Following fields were not transferred to the current cu/ Merged on 2019/05/31. Following fields were not transferred to the current customone Number: 4068122951","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"Q800392NG34TY124AY1XMRDV155MFS0","created_at":"2019-03-13T21:29:29.997Z","updated_at":"2019-03-13T21:29:30Z","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"LOYALTY"},{"id":"T34SCF6KH93WJTVP6ZMZD4S6T4","created_at":"2019-05-31T03:42:11.914Z","updated_at":"2019-05-31T03:42:12Z","preferences":{"email_unsubscribed":false},"groups":[{"id":"gv2:R8GSXE47MX23YS0DEE7M1C8GFW","name":"Instant Profile"}],"creation_source":"INSTANT_PROFILE"}]}';

          when(httpClient.get('https://connect.squareup.com/v2/customers', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.listCustomers();
          expect(item, isInstanceOf<ListCustomersResponse>());
          expect(item.cursor, null);
          expect(item.customers, isInstanceOf<List<Customer>>());
          expect(item.errors, null);
        });

        test('returns a ListCustomerResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"INVALID_CURSOR","detail":"The provided cursor `asdfjl` was not found.","field":"cursor"}]}';

          when(httpClient.get('https://connect.squareup.com/v2/customers', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi.listCustomers();
          expect(item, isInstanceOf<ListCustomersResponse>());
          expect(item.cursor, null);
          expect(item.customers, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Retrieve Customer Method', () {
        test('returns a RetrieveCustomerResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"customer":{"id":"fake-customer-id","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-05-31T00:51:29Z","cards":[{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Marcus","family_name":"Twichel","email_address":"test@invalid.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"+15555555555","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","note":"// Merged on 2019/05/23. Following fields were not transferred to the current customer:Phone Number: 4065181287// Merged on 2019/05/31. Following fields were not transferred to the current customer:Phone Number: 4068122951","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"}}';

          when(httpClient.get('https://connect.squareup.com/v2/customers/fake-customer-id', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.retrieveCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<RetrieveCustomerResponse>());
          expect(item.customer, isInstanceOf<Customer>());
          expect(item.errors, null);
        });

        test('returns a RetrieveCustomerResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `fake-id` not found."}]}';

          when(httpClient.get('https://connect.squareup.com/v2/customers/fake-customer-id', headers: {'Authorization': 'Bearer fake-token'}))
              .thenAnswer((_) async => Response(response, 404));

          var item = await squareClient.customersApi.retrieveCustomer(customerId: 'fake-customer-id');
          expect(item, isInstanceOf<RetrieveCustomerResponse>());
          expect(item.customer, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Search Customer Method', () {
        test('returns a SearchCustomersResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"customers":[{"id":"H00AXCWB8N7JAX97DV65B0CJKW","created_at":"2019-02-22T18:29:29.89Z","updated_at":"2019-02-22T18:38:09Z","given_name":"Brett","family_name":"Bastien","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.CHURN_RISK","name":"Lapsed"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"},{"id":"Q800392NG34TY124AY1XMRDV155MFS0","created_at":"2019-03-13T21:29:29.997Z","updated_at":"2019-03-13T21:29:30Z","phone_number":"+15555555555","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"LOYALTY"},{"id":"KS1WFD41ZX49MHXK2F5M3T3QRW","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Brittanny","family_name":"Reule","company_name":"City Brew Coffee","email_address":"test@invalid.com","address":{"address_line_1":"1102 Denway Place","locality":"Billings","postal_code":"59105"},"phone_number":"+15555555555","birthday":"1988-02-08T00:00:00-00:00","reference_id":"F8EF86A6-ADCC-4CE8-8BD7-A4A33526E17B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"},{"id":"XGTWWNNZXD4Y0J5Z3AZZF8R8H8","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:51Z","given_name":"Chrissy","family_name":"OMalley","email_address":"test@invalid.com","address":{"address_line_1":"PO Box 1159","locality":"Billings","postal_code":"59102"},"phone_number":"+15555555555","birthday":"1983-04-16T00:00:00-00:00","reference_id":"88D4863C-60BC-4CDA-B7A7-661A744CC1A6","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"IMPORT"},{"id":"33DF2ME28H7X6HNKCZ3J529820","created_at":"2019-05-23T17:38:50.356Z","updated_at":"2019-05-23T17:38:52Z","given_name":"Kate","family_name":"Guerrero","company_name":"City Brew Coffee","email_address":"kater@citybrew.com","address":{"address_line_1":"2223 Hewitt Dr","locality":"Billings","postal_code":"59101"},"phone_number":"+15555555555","birthday":"1988-11-21T00:00:00-00:00","reference_id":"D5C262B4-73AD-4FE2-BE31-9C88BE189B4B","preferences":{"email_unsubscribed":false},"groups":[{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"}],"creation_source":"IMPORT"}],"cursor":"Cg0wU0c5QzM4N0RYME1OElEIBRIkcjowU0c5QzM4N0RYME1OLjlDVjdaREs5S04zNzJXV0g7bzo1KAFAAWgImgEgCBWigwELCIDo0NTCy98CEACqgwELCIDojrCSkOMCEAAaBggBEAFYAQ=="}';

          when(httpClient.post('https://connect.squareup.com/v2/customers/search', headers: {'Authorization': 'Bearer fake-token'}, body: '{"limit":5,"query":{"filter":{"created_at":{"start_at":"2019-01-01T00:00:00.000","end_at":"2019-06-30T00:00:00.000"}},"sort":{"field":"CREATED_AT","order":"ASC"}}}'))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.searchCustomers(limit: 5, sortField: CustomerSortField.createdAt, sortOrder: SortOrder.ascending, createdAtStart: DateTime(2019, 1, 1), createdAtEnd: DateTime(2019, 6, 30));
          expect(item, isInstanceOf<SearchCustomersResponse>());
          expect(item.customers, isInstanceOf<List<Customer>>());
          expect(item.cursor, 'Cg0wU0c5QzM4N0RYME1OElEIBRIkcjowU0c5QzM4N0RYME1OLjlDVjdaREs5S04zNzJXV0g7bzo1KAFAAWgImgEgCBWigwELCIDo0NTCy98CEACqgwELCIDojrCSkOMCEAAaBggBEAFYAQ==');
          expect(item.errors, null);
        });

        test('returns a SearchCustomersResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"INVALID_ENUM_VALUE","detail":"`ASCS` is not a valid enum value for `query.sort.order`.","field":"query.sort.order"}]}';

          when(httpClient.post('https://connect.squareup.com/v2/customers/search', headers: {'Authorization': 'Bearer fake-token'}, body: '{"limit":5,"query":{"filter":{"created_at":{"start_at":"2019-01-01T00:00:00.000","end_at":"2019-06-30T00:00:00.000"}},"sort":{"field":"CREATED_AT","order":"ASC"}}}'))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.searchCustomers(limit: 5, sortField: CustomerSortField.createdAt, sortOrder: SortOrder.ascending, createdAtStart: DateTime(2019, 1, 1), createdAtEnd: DateTime(2019, 6, 30));
          expect(item, isInstanceOf<SearchCustomersResponse>());
          expect(item.customers, null);
          expect(item.cursor, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
      group('Update Customer Method', () {
        test('returns a UpdateCustomerResponse if the http call completes successfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"customer":{"id":"3PPP9N0K056MFAXRN94Y8AN8ZC","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-07-09T19:22:31Z","cards":[{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Tester","family_name":"Twichel","email_address":"marcust@citybrew.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"406-518-1287","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"}}';

          when(httpClient.put('https://connect.squareup.com/v2/customers/fake-cust-id', headers: {'Authorization': 'Bearer fake-token'}, body: '{"given_name":"Tester","note":"This is a test note"}'))
              .thenAnswer((_) async => Response(response, 200));

          var item = await squareClient.customersApi.updateCustomer(customerId: 'fake-cust-id', givenName: 'Tester', note: 'This is a test note');
          expect(item, isInstanceOf<UpdateCustomerResponse>());
          expect(item.customer, isInstanceOf<Customer>());
          expect(item.errors, null);
        });

        test('returns a UpdateCustomerResponse with errors if the http call completes unsuccesfully', () async {
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Customer with ID `3PPP9N0K056MFAXRN94Y8AN8Z` not found."}]}';

          when(httpClient.put('https://connect.squareup.com/v2/customers/fake-cust-id', headers: {'Authorization': 'Bearer fake-token'}, body: '{"given_name":"Tester","note":"This is a test note"}'))
              .thenAnswer((_) async => Response(response, 400));

          var item = await squareClient.customersApi.updateCustomer(customerId: 'fake-cust-id', givenName: 'Tester', note: 'This is a test note');
          expect(item, isInstanceOf<UpdateCustomerResponse>());
          expect(item.customer, null);
          expect(item.errors, isInstanceOf<List<SquareError>>());
        });
      });
    });
    group('From JSON', () {
      group('Customer Object fromJson', () {
        const exampleCustomerObj = '{"id":"3PPP9N0K056MFAXRN94Y8AN8ZC","created_at":"2019-03-13T21:46:04.073Z","updated_at":"2019-05-31T00:51:29Z","cards":[{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021},{"id":"ccof:Cn1d1JeAJR876v8x3GB","card_brand":"VISA","last_4":"7038","exp_month":2,"exp_year":2024}],"given_name":"Marcus","family_name":"Twichel","email_address":"test@invalid.com","address":{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"},"phone_number":"+15555555555","birthday":"1997-06-15T00:00:00-00:00","reference_id":"810D7A49-6F02-4634-A468-2AF28228EAA4","note":"This is a test note.","preferences":{"email_unsubscribed":false},"groups":[{"id":"0SG9C387DX0MN.email_collection","name":"Collected Emails"},{"id":"590a4ced-3ac0-4ed7-4436-52f41863a8f5","name":"Import 2019523_113810"},{"id":"0SG9C387DX0MN.LOYAL","name":"Regulars"},{"id":"0SG9C387DX0MN.REACHABLE","name":"Reachable"},{"id":"0SG9C387DX0MN.CARDS_ON_FILE","name":"Cards on File"},{"id":"0SG9C387DX0MN.LOYALTY_ALL","name":"Loyalty Enrollees"}],"creation_source":"MERGE"}';

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
          expect(object.emailAddress, 'marcust@citybrew.com');
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
        const exampleCardObj = '{"id":"ccof:Q4OtExaEudlItxpD4GB","card_brand":"VISA","last_4":"3425","exp_month":5,"exp_year":2021}';

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
        const exampleAddressObj = '{"address_line_1":"1529 Downy Rd","locality":"Laurel","postal_code":"59044"}';
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

  group('Catalog API', () {

    group ('Catalog Object fromJson', () {
      test('type parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.type, CatalogObjectType.item);
      });
      test('id parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.id, 'L3N4FU22JFINH4ZGZDMBKJBJ');
      });
      test('updatedAt parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.updatedAt, DateTime.parse('2019-05-29T00:33:13.689Z'));
      });
      test('version parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.version, 1559089993689);
      });
      test('isDeleted parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.isDeleted, false);
      });
      test('presentAtAllLocations parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.presentAtAllLocations, true);
      });
      test('presentAtLocationIds parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.presentAtLocationIds, null);
      });
      test('absentAtLocationIds parses correctly', () {
        var object = CatalogObject.fromJson(json.decode(exampleCatalogObj));
        expect(object.absentAtLocationIds, null);
      });
      
    });
    group('retrieveCatalogObject', () {
      test('if object ID is null, then throw ArgumentException', () async{
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        try {
          await squareClient.catalogApi.retrieveCatalogObject();
          fail('exception not thrown');
        } catch (e){
          expect(e, isInstanceOf<ArgumentError>());
        }
      });

      test('returns a RetrieveCatalogObjectResponse if the http call completes successfully', () async {
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        const response = '{"object":{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}}';

        when(httpClient.get('https://connect.squareup.com/v2/catalog/object/fake-item-id', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 200));

        var item = await squareClient.catalogApi.retrieveCatalogObject(objectId: 'fake-item-id');
        expect(item, isInstanceOf<RetrieveCatalogObjectResponse>());
        expect(item.object.type, CatalogObjectType.item);
        
        expect(item.errors, null);

      });

      group('related objects', () {
        test('if related objects is true, then returns related objects', () async{
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"object":{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}},"related_objects":[{"type":"CATEGORY","id":"PBZ352F5ZNA3MXO7B7RV3634","updated_at":"2019-05-21T01:24:35.825Z","version":1558401875825,"is_deleted":false,"present_at_all_locations":true,"category_data":{"name":"Espresso Drinks"}},{"type":"MODIFIER_LIST","id":"SX25E6SWDW2KVEAURQNTELZN","updated_at":"2019-05-29T03:15:55.851Z","version":1559099755851,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Shots","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"NBN2BV54HN5AJ2HYMYGAPMZP","updated_at":"2019-05-21T01:02:06.021Z","version":1558400526021,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Flavors","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"RMKGO5SKP4NVRP43AXXEXMGX","updated_at":"2019-05-22T02:39:07.145Z","version":1558492747145,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Sweeteners/Mixins","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"BOFZP4ACTH37LAPVPYLUTKAZ","updated_at":"2019-04-27T19:35:20.619Z","version":1556393720619,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Milk Splash","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"F6KGWQTLTKFCAKBUHCGUCEM6","updated_at":"2019-05-22T05:37:22.443Z","version":1558503442443,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Temp","selection_type":"SINGLE"}},{"type":"MODIFIER_LIST","id":"AORM2PIRT5OHHPPPFRH33MXD","updated_at":"2019-05-22T05:34:48.422Z","version":1558503288422,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Caffeine Level","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"BU6SYULN4NNGTAS76B4W2U5J","updated_at":"2019-05-22T02:38:52.765Z","version":1558492732765,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Cup Options","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","updated_at":"2019-05-22T02:41:09.247Z","version":1558492869247,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Add Flavor Amount","selection_type":"SINGLE"}}]}';

          when(httpClient.get('https://connect.squareup.com/v2/catalog/object/fake-item-id?include_related_objects=true', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 200));
          
          expect((await squareClient.catalogApi.retrieveCatalogObject(objectId: 'fake-item-id', includeRelatedObjects: true)).relatedObjects, isInstanceOf<List<CatalogObject>>());
        });

        test('if related objects is false, then doesn''t return related objects', () async{
          final squareClient = SquareConnect.instance;
          final httpClient = MockClient();
          squareClient.setClient(client: httpClient);
          squareClient.setAuthToken(token: 'fake-token');

          const response = '{"object":{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}}';

          when(httpClient.get('https://connect.squareup.com/v2/catalog/object/fake-item-id?include_related_objects=false', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 200));
          
          expect((await squareClient.catalogApi.retrieveCatalogObject(objectId: 'fake-item-id', includeRelatedObjects: false)).relatedObjects, null);
        });
      });
    });

    group('listCatalogObject', () {
      test('returns a ListCatalogResponse if the http call completes successfully', () async {
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        const response = '{"cursor":"CAASIwoTNTAzMTE1MDEzOjI5NjE1NDk1MxIMEAEQBBAGEAgQCjhk","objects":[{"type":"CATEGORY","id":"PBZ352F5ZNA3MXO7B7RV3634","updated_at":"2019-05-21T01:24:35.825Z","version":1558401875825,"is_deleted":false,"present_at_all_locations":true,"category_data":{"name":"Espresso Drinks"}},{"type":"CATEGORY","id":"CY2XA4J2NBQF6BKYL33HRLVI","updated_at":"2019-05-21T19:42:18.171Z","version":1558467738171,"is_deleted":false,"present_at_all_locations":true,"category_data":{"name":"Frappes"}},{"type":"CATEGORY","id":"X4SUGAR3BMDBBKDFKRFSO7DY","updated_at":"2019-05-21T19:43:48.979Z","version":1558467828979,"is_deleted":false,"present_at_all_locations":true,"category_data":{"name":"Non Coffee"}},{"type":"CATEGORY","id":"A265F46TM2KVLCI5UKPTSGV7","updated_at":"2019-02-19T18:46:22.479Z","version":1550601982479,"is_deleted":false,"present_at_all_locations":true,"category_data":{"name":"Signature Drinks"}},{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}},{"type":"ITEM","id":"LXOHH2DLXQEFIWPMHU4ISKUQ","updated_at":"2019-05-29T03:24:50.082Z","version":1559100290082,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Coffee Granita","abbreviation":"Coffee","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"V4VR3WV6JZXPH3HPG6PAJE5V","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"Y3V4OPKSKEYO7ONIYIXZWYTM","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"HCAGIR4UA7DLKN4NFJFYDWE5","updated_at":"2019-05-20T19:09:54.017Z","version":1558379394017,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"LXOHH2DLXQEFIWPMHU4ISKUQ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":365,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"QX77GWLJDO5SUDY5SBSM6S3Q","updated_at":"2019-05-20T19:09:54.017Z","version":1558379394017,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"LXOHH2DLXQEFIWPMHU4ISKUQ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":425,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"PLSGFMPM73KXSSL4W4ASKO4L","updated_at":"2019-05-20T19:09:54.017Z","version":1558379394017,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"LXOHH2DLXQEFIWPMHU4ISKUQ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":525,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}},{"type":"ITEM","id":"SIBHFVWEYOYZP2WIXX2FIBWA","updated_at":"2019-05-20T19:03:55.025Z","version":1558379035025,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Hot Chocolate","abbreviation":"Cocoa","label_color":"B21212","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"X4SUGAR3BMDBBKDFKRFSO7DY","ordinal":0,"modifier_list_info":[{"modifier_list_id":"VVS3BMZZ62KIDWXKUGS7Z4SW","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"CSSYBED2HYHKAMLFJB2UAZEY","updated_at":"2019-05-20T19:03:55.025Z","version":1558379035025,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"SIBHFVWEYOYZP2WIXX2FIBWA","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"MW22UBGLWLKFJBSP3V2BVKB6","updated_at":"2019-05-20T19:03:55.025Z","version":1558379035025,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"SIBHFVWEYOYZP2WIXX2FIBWA","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":345,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"775WWQCVJVRJWJLP7COJX6BI","updated_at":"2019-05-20T19:03:55.025Z","version":1558379035025,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"SIBHFVWEYOYZP2WIXX2FIBWA","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":365,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}]}';

        when(httpClient.get('https://connect.squareup.com/v2/catalog/list', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 200));

        var item = await squareClient.catalogApi.listCatalog();
        expect(item, isInstanceOf<ListCatalogResponse>());
        expect(item.cursor, isInstanceOf<String>());
        expect(item.objects, isInstanceOf<List<CatalogObject>>());
        expect(item.errors, null);
      });

      test('returns a ListCatalogResponse with errors if the http call completes unsuccesfully', () async {
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"INVALID_CURSOR","detail":"The provided cursor `FakeCursor` was not found.","field":"cursor"}]}';

        when(httpClient.get('https://connect.squareup.com/v2/catalog/list', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 404));

        var item = await squareClient.catalogApi.listCatalog();
        expect(item, isInstanceOf<ListCatalogResponse>());
        expect(item.cursor, null);
        expect(item.objects, null);
        expect(item.errors, isInstanceOf<List<SquareError>>());
      });
    });

  group('deleteCatalogObject', () {
      test('returns a DeleteCatalogObjectResponse if the http call completes successfully', () async {
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        const response = '{"deleted_object_ids":["DDXGG2X5FKZJYNJ5WCWN2K5F","XPEYCWZOSOME722PNDPH3VBV"],"deleted_at":"2019-07-03T23:45:21.465Z"}';

        when(httpClient.delete('https://connect.squareup.com/v2/catalog/object/fake-object-id', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 200));

        var item = await squareClient.catalogApi.deleteCatalogObject(objectId: 'fake-object-id');
        expect(item, isInstanceOf<DeleteCatalogObjectResponse>());
        expect(item.deletedObjectIds, isInstanceOf<List<String>>());
        expect(item.deletedAt, isInstanceOf<DateTime>());
        expect(item.errors, null);
      });

      test('returns a DeleteCatalogObjectResponse with errors if the http call completes unsuccesfully', () async {
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        const response = '{"errors":[{"category":"INVALID_REQUEST_ERROR","code":"NOT_FOUND","detail":"Catalog object with ID `XPEYCWZOSOME722PNDPH3VBV` not found."}]}';

        when(httpClient.delete('https://connect.squareup.com/v2/catalog/object/fake-object-id', headers: {'Authorization': 'Bearer fake-token'}))
            .thenAnswer((_) async => Response(response, 404));

        var item = await squareClient.catalogApi.deleteCatalogObject(objectId: 'fake-object-id');
        expect(item, isInstanceOf<DeleteCatalogObjectResponse>());
        expect(item.deletedObjectIds, null);
        expect(item.deletedAt, null);
        expect(item.errors, isInstanceOf<List<SquareError>>());
      });
    });
  });
}

class MockClient extends Mock implements Client {}

const exampleCatalogObj = '{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}';