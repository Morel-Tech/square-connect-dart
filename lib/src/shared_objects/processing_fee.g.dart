// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessingFee _$ProcessingFeeFromJson(Map<String, dynamic> json) =>
    ProcessingFee(
      amountMoney: json['amountMoney'] == null
          ? null
          : Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      effectiveAt: json['effectiveAt'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ProcessingFeeToJson(ProcessingFee instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'effectiveAt': instance.effectiveAt,
      'type': instance.type,
    };
