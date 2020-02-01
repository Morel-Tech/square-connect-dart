import 'package:square_connect/square_connect.dart';
import 'package:test/test.dart';

void main() {
  test('parse duration', () {});
  group('Square Connect Basics', () {
    test('sample test', () {
      var time = SquareTimeOfDay.parse('06:30:15');
      expect(time, isInstanceOf<SquareTimeOfDay>());
      expect(time.hours, 6);
      expect(time.minutes, 30);
      expect(time.seconds, 15);
    });
  });
}

const exampleCatalogObj =
    '{"type":"ITEM","id":"L3N4FU22JFINH4ZGZDMBKJBJ","updated_at":"2019-05-29T00:33:13.689Z","version":1559089993689,"is_deleted":false,"present_at_all_locations":true,"item_data":{"name":"Americano","description":"Shots of espresso layered on top of hot water to make an excellent cup of coffee.","abbreviation":"Amer","label_color":"593C00","visibility":"PRIVATE","available_online":false,"available_for_pickup":false,"available_electronically":false,"category_id":"PBZ352F5ZNA3MXO7B7RV3634","ordinal":0,"modifier_list_info":[{"modifier_list_id":"SX25E6SWDW2KVEAURQNTELZN","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"RMKGO5SKP4NVRP43AXXEXMGX","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"BOFZP4ACTH37LAPVPYLUTKAZ","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"NBN2BV54HN5AJ2HYMYGAPMZP","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"F6KGWQTLTKFCAKBUHCGUCEM6","min_selected_modifiers":1,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"EQRY5Q7DRIAGK46ZQ2TGGNNJ","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true},{"modifier_list_id":"BU6SYULN4NNGTAS76B4W2U5J","min_selected_modifiers":-1,"max_selected_modifiers":-1,"enabled":true},{"modifier_list_id":"AORM2PIRT5OHHPPPFRH33MXD","min_selected_modifiers":0,"max_selected_modifiers":1,"enabled":true}],"variations":[{"type":"ITEM_VARIATION","id":"JWCOGCT7NS3U76QKMK434C4V","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Short","ordinal":0,"pricing_type":"FIXED_PRICING","price_money":{"amount":245,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"7TYHWUGYSPKFPZ57H2ARYX7C","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Tall","ordinal":1,"pricing_type":"FIXED_PRICING","price_money":{"amount":295,"currency":"USD"}}},{"type":"ITEM_VARIATION","id":"4VY2R5TXGPPFXUOL5PKZ3PPO","updated_at":"2019-05-22T05:24:49.744Z","version":1558502689744,"is_deleted":false,"present_at_all_locations":true,"item_variation_data":{"item_id":"L3N4FU22JFINH4ZGZDMBKJBJ","name":"Grande","ordinal":2,"pricing_type":"FIXED_PRICING","price_money":{"amount":325,"currency":"USD"}}}],"product_type":"REGULAR","skip_modifier_screen":false}}';
