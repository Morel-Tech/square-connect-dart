// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_orders_state_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOrdersStateFilter _$SearchOrdersStateFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersStateFilter(
      states: (json['states'] as List<dynamic>)
          .map((e) => $enumDecode(_$OrderStateEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersStateFilterToJson(
        SearchOrdersStateFilter instance) =>
    <String, dynamic>{
      'states': instance.states.map((e) => _$OrderStateEnumMap[e]!).toList(),
    };

const _$OrderStateEnumMap = {
  OrderState.open: 'OPEN',
  OrderState.completed: 'COMPLETED',
  OrderState.canceled: 'CANCELED',
  OrderState.draft: 'DRAFT',
};
