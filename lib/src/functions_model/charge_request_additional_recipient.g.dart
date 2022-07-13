// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_request_additional_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeRequestAdditionalRecipientRequest
    _$ChargeRequestAdditionalRecipientRequestFromJson(
            Map<String, dynamic> json) =>
        ChargeRequestAdditionalRecipientRequest();

Map<String, dynamic> _$ChargeRequestAdditionalRecipientRequestToJson(
        ChargeRequestAdditionalRecipientRequest instance) =>
    <String, dynamic>{};

ChargeRequestAdditionalRecipientResponse
    _$ChargeRequestAdditionalRecipientResponseFromJson(
            Map<String, dynamic> json) =>
        ChargeRequestAdditionalRecipientResponse(
          errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$ChargeRequestAdditionalRecipientResponseToJson(
        ChargeRequestAdditionalRecipientResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };
