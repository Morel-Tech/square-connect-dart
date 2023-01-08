// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessingFee _$ProcessingFeeFromJson(Map<String, dynamic> json) =>
    ProcessingFee(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      effectiveAt: json['effective_at'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ProcessingFeeToJson(ProcessingFee instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney?.toJson());
  writeNotNull('effective_at', instance.effectiveAt);
  writeNotNull('type', instance.type);
  return val;
}
