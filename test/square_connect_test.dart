import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:square_connect/square_connect.dart';
import 'package:mockito/mockito.dart';


void main() {

  group('Square Connect Basics', () {
    
  });

  group('Catalog API', () {

    group ('Catalog Object fromJson', () {

    });
      group('retrieveCatalogObject', () {
    test('if object ID is null, then throw ArgumentException', () async{
      final squareClient = SquareConnect.instance;
      final httpClient = MockClient();
      squareClient.setClient(client: httpClient);
      squareClient.setAuthToken(token: 'fake-token');

      squareClient.setClient(client: httpClient);

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

      when(httpClient.get('https://connect.squareup.com/v2/catalog/object/fake-item-id', headers: {'Authorization': 'Bearer fake-token'}))
          .thenAnswer((_) async => Response(returnResponseObjResponse, 200));

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

        when(httpClient.get('https://connect.squareup.com/v2/catalog/object/fake-item-id?include_related_objects=true', headers: {'Authorization': 'Bearer fake-token'}))
          .thenAnswer((_) async => Response(relatedObjectsTrueResponse, 200));
        
        expect((await squareClient.catalogApi.retrieveCatalogObject(objectId: 'fake-item-id', includeRelatedObjects: true)).relatedObjects, isInstanceOf<List<CatalogObject>>());
      });

      test('if related objects is false, then doesn''t return related objects', () async{
        final squareClient = SquareConnect.instance;
        final httpClient = MockClient();
        squareClient.setClient(client: httpClient);
        squareClient.setAuthToken(token: 'fake-token');

        when(httpClient.get('https://connect.squareup.com/v2/catalog/object/fake-item-id?include_related_objects=false', headers: {'Authorization': 'Bearer fake-token'}))
          .thenAnswer((_) async => Response(relatedObjectsFalseResponse, 200));
        
        expect((await squareClient.catalogApi.retrieveCatalogObject(objectId: 'fake-item-id', includeRelatedObjects: false)).relatedObjects, null);
      });
    });
  });
  });

}

class MockClient extends Mock implements Client {}

const returnResponseObjResponse = '{"object":{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}}';
const relatedObjectsTrueResponse = '{"object":{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}},"related_objects":[{"type":"CATEGORY","id":"PBZ352F5ZNA3MXO7B7RV3634","updated_at":"2019-05-21T01:24:35.825Z","version":1558401875825,"is_deleted":false,"present_at_all_locations":true,"category_data":{"name":"Espresso Drinks"}},{"type":"MODIFIER_LIST","id":"SX25E6SWDW2KVEAURQNTELZN","updated_at":"2019-05-29T03:15:55.851Z","version":1559099755851,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Shots","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"NBN2BV54HN5AJ2HYMYGAPMZP","updated_at":"2019-05-21T01:02:06.021Z","version":1558400526021,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Flavors","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"RMKGO5SKP4NVRP43AXXEXMGX","updated_at":"2019-05-22T02:39:07.145Z","version":1558492747145,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Sweeteners/Mixins","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"BOFZP4ACTH37LAPVPYLUTKAZ","updated_at":"2019-04-27T19:35:20.619Z","version":1556393720619,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Milk Splash","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"F6KGWQTLTKFCAKBUHCGUCEM6","updated_at":"2019-05-22T05:37:22.443Z","version":1558503442443,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Temp","selection_type":"SINGLE"}},{"type":"MODIFIER_LIST","id":"AORM2PIRT5OHHPPPFRH33MXD","updated_at":"2019-05-22T05:34:48.422Z","version":1558503288422,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Caffeine Level","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"BU6SYULN4NNGTAS76B4W2U5J","updated_at":"2019-05-22T02:38:52.765Z","version":1558492732765,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Cup Options","selection_type":"MULTIPLE"}},{"type":"MODIFIER_LIST","id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","updated_at":"2019-05-22T02:41:09.247Z","version":1558492869247,"is_deleted":false,"present_at_all_locations":true,"modifier_list_data":{"name":"Add Flavor Amount","selection_type":"SINGLE"}}]}';
const relatedObjectsFalseResponse = '{"object":{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}}';
