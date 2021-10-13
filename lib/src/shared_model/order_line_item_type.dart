import 'package:json_annotation/json_annotation.dart';

enum OrderLineItemType {
  @JsonValue('ITEM')
  item,

  @JsonValue('CUSTOM_AMOUNT')
  customAmount,

  @JsonValue('GIFT_CARD')
  giftCard,
}
