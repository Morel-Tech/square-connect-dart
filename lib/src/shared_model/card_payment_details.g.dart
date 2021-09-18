// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_payment_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardPaymentDetails _$CardPaymentDetailsFromJson(Map<String, dynamic> json) =>
    CardPaymentDetails(
      status: json['status'] as String?,
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: json['entry_method'] as String?,
      cvvStatus: json['cvv_status'] as String?,
      avsStatus: json['avs_status'] as String?,
      authResultCode: json['auth_result_code'] as String?,
      applicationIdentifier: json['application_identifier'] as String?,
      applicationName: json['application_name'] as String?,
      applicationCryptogram: json['application_cryptogram'] as String?,
      verificationMethod: json['verification_method'] as String?,
      verificationResults: json['verification_results'] as String?,
      statementDescription: json['statement_description'] as String?,
      deviceDetails: json['device_details'] == null
          ? null
          : DeviceDetails.fromJson(
              json['device_details'] as Map<String, dynamic>),
      refundRequiresCardPresence: json['refund_requires_card_presence'] == null
          ? null
          : DeviceDetails.fromJson(
              json['refund_requires_card_presence'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardPaymentDetailsToJson(CardPaymentDetails instance) =>
    <String, dynamic>{
      'status': instance.status,
      'card': instance.card?.toJson(),
      'entry_method': instance.entryMethod,
      'cvv_status': instance.cvvStatus,
      'avs_status': instance.avsStatus,
      'auth_result_code': instance.authResultCode,
      'application_identifier': instance.applicationIdentifier,
      'application_name': instance.applicationName,
      'application_cryptogram': instance.applicationCryptogram,
      'verification_method': instance.verificationMethod,
      'verification_results': instance.verificationResults,
      'statement_description': instance.statementDescription,
      'device_details': instance.deviceDetails?.toJson(),
      'refund_requires_card_presence':
          instance.refundRequiresCardPresence?.toJson(),
    };
