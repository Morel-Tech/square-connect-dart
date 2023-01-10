// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_fulfillment_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersFulfillmentFilter _$SearchOrdersFulfillmentFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersFulfillmentFilter(
      fulfillmentStates: (json['fulfillment_states'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderFulfillmentStateEnumMap, e))
          .toList(),
      fulfillmentTypes: (json['fulfillment_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderFulfillmentTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersFulfillmentFilterToJson(
    SearchOrdersFulfillmentFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'fulfillment_states',
      instance.fulfillmentStates
          ?.map((e) => _$OrderFulfillmentStateEnumMap[e]!)
          .toList());
  writeNotNull(
      'fulfillment_types',
      instance.fulfillmentTypes
          ?.map((e) => _$OrderFulfillmentTypeEnumMap[e]!)
          .toList());
  return val;
}

const _$OrderFulfillmentStateEnumMap = {
  OrderFulfillmentState.proposed: 'PROPOSED',
  OrderFulfillmentState.reserved: 'RESERVED',
  OrderFulfillmentState.prepared: 'PREPARED',
  OrderFulfillmentState.completed: 'COMPLETED',
  OrderFulfillmentState.canceled: 'CANCELED',
  OrderFulfillmentState.failed: 'FAILED',
};

const _$OrderFulfillmentTypeEnumMap = {
  OrderFulfillmentType.pickup: 'PICKUP',
  OrderFulfillmentType.shipment: 'SHIPMENT',
  OrderFulfillmentType.delivery: 'DELIVERY',
};
