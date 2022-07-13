// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPaymentRequest _$ListPaymentRequestFromJson(Map<String, dynamic> json) =>
    ListPaymentRequest();

Map<String, dynamic> _$ListPaymentRequestToJson(ListPaymentRequest instance) =>
    <String, dynamic>{};

ListPaymentResponse _$ListPaymentResponseFromJson(Map<String, dynamic> json) =>
    ListPaymentResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListPaymentResponseToJson(
        ListPaymentResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };
