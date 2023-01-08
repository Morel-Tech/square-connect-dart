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

Map<String, dynamic> _$CardPaymentDetailsToJson(CardPaymentDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('card', instance.card?.toJson());
  writeNotNull('entry_method', instance.entryMethod);
  writeNotNull('cvv_status', instance.cvvStatus);
  writeNotNull('avs_status', instance.avsStatus);
  writeNotNull('auth_result_code', instance.authResultCode);
  writeNotNull('application_identifier', instance.applicationIdentifier);
  writeNotNull('application_name', instance.applicationName);
  writeNotNull('application_cryptogram', instance.applicationCryptogram);
  writeNotNull('verification_method', instance.verificationMethod);
  writeNotNull('verification_results', instance.verificationResults);
  writeNotNull('statement_description', instance.statementDescription);
  writeNotNull('device_details', instance.deviceDetails?.toJson());
  writeNotNull('refund_requires_card_presence',
      instance.refundRequiresCardPresence?.toJson());
  return val;
}
