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
    ChargeRequestAdditionalRecipientResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  return val;
}
