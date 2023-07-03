// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardActivity _$GiftCardActivityFromJson(Map<String, dynamic> json) =>
    GiftCardActivity(
      type: $enumDecode(_$GiftCardActivityTypeEnumMap, json['type']),
      locationId: json['location_id'] as String,
      id: json['id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      giftCardId: json['gift_card_id'] as String?,
      giftCardGan: json['gift_card_gan'] as String?,
      giftCardBalanceMoney: json['gift_card_balance_money'] == null
          ? null
          : Money.fromJson(
              json['gift_card_balance_money'] as Map<String, dynamic>),
      loadActivityDetails: json['load_activity_details'] == null
          ? null
          : GiftCardActivityLoad.fromJson(
              json['load_activity_details'] as Map<String, dynamic>),
      activateActivityDetails: json['activate_activity_details'] == null
          ? null
          : GiftCardActivityActivate.fromJson(
              json['activate_activity_details'] as Map<String, dynamic>),
      redeemActivityDetails: json['redeem_activity_details'] == null
          ? null
          : GiftCardActivityRedeem.fromJson(
              json['redeem_activity_details'] as Map<String, dynamic>),
      clearBalanceActivityDetails: json['clear_balance_activity_details'] ==
              null
          ? null
          : GiftCardActivityClearBalance.fromJson(
              json['clear_balance_activity_details'] as Map<String, dynamic>),
      deactivateActivityDetails: json['deactivate_activity_details'] == null
          ? null
          : GiftCardActivityDeactivate.fromJson(
              json['deactivate_activity_details'] as Map<String, dynamic>),
      adjustIncrementActivityDetails:
          json['adjust_increment_activity_details'] == null
              ? null
              : GiftCardActivityAdjustIncrement.fromJson(
                  json['adjust_increment_activity_details']
                      as Map<String, dynamic>),
      adjustDecrementActivityDetails:
          json['adjust_decrement_activity_details'] == null
              ? null
              : GiftCardActivityAdjustDecrement.fromJson(
                  json['adjust_decrement_activity_details']
                      as Map<String, dynamic>),
      refundActivityDetails: json['refund_activity_details'] == null
          ? null
          : GiftCardActivityRefund.fromJson(
              json['refund_activity_details'] as Map<String, dynamic>),
      unlinkedActivityRefundActivityDetails:
          json['unlinked_activity_refund_activity_details'] == null
              ? null
              : GiftCardActivityUnlinkedActivityRefund.fromJson(
                  json['unlinked_activity_refund_activity_details']
                      as Map<String, dynamic>),
      importActivityDetails: json['import_activity_details'] == null
          ? null
          : GiftCardActivityImport.fromJson(
              json['import_activity_details'] as Map<String, dynamic>),
      blockActivityDetails: json['block_activity_details'] == null
          ? null
          : GiftCardActivityBlock.fromJson(
              json['block_activity_details'] as Map<String, dynamic>),
      unblockActivityDetails: json['unblock_activity_details'] == null
          ? null
          : GiftCardActivityUnblock.fromJson(
              json['unblock_activity_details'] as Map<String, dynamic>),
      importReversalActivityDetails: json['import_reversal_activity_details'] ==
              null
          ? null
          : GiftCardActivityImportReversal.fromJson(
              json['import_reversal_activity_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityToJson(GiftCardActivity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['type'] = _$GiftCardActivityTypeEnumMap[instance.type]!;
  val['location_id'] = instance.locationId;
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('gift_card_id', instance.giftCardId);
  writeNotNull('gift_card_gan', instance.giftCardGan);
  writeNotNull(
      'gift_card_balance_money', instance.giftCardBalanceMoney?.toJson());
  writeNotNull('load_activity_details', instance.loadActivityDetails?.toJson());
  writeNotNull(
      'activate_activity_details', instance.activateActivityDetails?.toJson());
  writeNotNull(
      'redeem_activity_details', instance.redeemActivityDetails?.toJson());
  writeNotNull('clear_balance_activity_details',
      instance.clearBalanceActivityDetails?.toJson());
  writeNotNull('deactivate_activity_details',
      instance.deactivateActivityDetails?.toJson());
  writeNotNull('adjust_increment_activity_details',
      instance.adjustIncrementActivityDetails?.toJson());
  writeNotNull('adjust_decrement_activity_details',
      instance.adjustDecrementActivityDetails?.toJson());
  writeNotNull(
      'refund_activity_details', instance.refundActivityDetails?.toJson());
  writeNotNull('unlinked_activity_refund_activity_details',
      instance.unlinkedActivityRefundActivityDetails?.toJson());
  writeNotNull(
      'import_activity_details', instance.importActivityDetails?.toJson());
  writeNotNull(
      'block_activity_details', instance.blockActivityDetails?.toJson());
  writeNotNull(
      'unblock_activity_details', instance.unblockActivityDetails?.toJson());
  writeNotNull('import_reversal_activity_details',
      instance.importReversalActivityDetails?.toJson());
  return val;
}

const _$GiftCardActivityTypeEnumMap = {
  GiftCardActivityType.activate: 'ACTIVATE',
  GiftCardActivityType.load: 'LOAD',
  GiftCardActivityType.redeem: 'REDEEM',
  GiftCardActivityType.clearBalance: 'CLEAR_BALANCE',
  GiftCardActivityType.deactivate: 'DEACTIVATE',
  GiftCardActivityType.adjustIncrement: 'ADJUST_INCREMENT',
  GiftCardActivityType.adjustDecrement: 'ADJUST_DECREMENT',
  GiftCardActivityType.refund: 'REFUND',
  GiftCardActivityType.unlinkedActivityRefund: 'UNLINKED_ACTIVITY_REFUND',
  GiftCardActivityType.import: 'IMPORT',
  GiftCardActivityType.block: 'BLOCK',
  GiftCardActivityType.unblock: 'UNBLOCK',
  GiftCardActivityType.importReversal: 'IMPORT_REVERSAL',
};
