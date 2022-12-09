import 'package:json_annotation/json_annotation.dart';

/// Indicates the type of CatalogItem. Can only create `regular`
/// and `appointmentsService`.
enum CatalogItemProductType {
  @JsonValue('REGULAR')
  regular,
  @JsonValue('GIFT_CARD')
  giftCard,
  @JsonValue('APPOINTMENTS_SERVICE')
  appointmentsService,
  @JsonValue('RETAIL_ITEM')
  retailItem,
  @JsonValue('RESTAURANT_ITEM')
  restaurantItem,
}
