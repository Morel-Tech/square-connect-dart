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
      entryMethod: json['entryMethod'] as String?,
      cvvStatus: json['cvvStatus'] as String?,
      avsStatus: json['avsStatus'] as String?,
      authResultCode: json['authResultCode'] as String?,
      applicationIdentifier: json['applicationIdentifier'] as String?,
      applicationName: json['applicationName'] as String?,
      applicationCryptogram: json['applicationCryptogram'] as String?,
      verificationMethod: json['verificationMethod'] as String?,
      verificationResults: json['verificationResults'] as String?,
      statementDescription: json['statementDescription'] as String?,
      deviceDetails: json['deviceDetails'] == null
          ? null
          : DeviceDetails.fromJson(
              json['deviceDetails'] as Map<String, dynamic>),
      refundRequiresCardPresence: json['refundRequiresCardPresence'] == null
          ? null
          : DeviceDetails.fromJson(
              json['refundRequiresCardPresence'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardPaymentDetailsToJson(CardPaymentDetails instance) =>
    <String, dynamic>{
      'status': instance.status,
      'card': instance.card,
      'entryMethod': instance.entryMethod,
      'cvvStatus': instance.cvvStatus,
      'avsStatus': instance.avsStatus,
      'authResultCode': instance.authResultCode,
      'applicationIdentifier': instance.applicationIdentifier,
      'applicationName': instance.applicationName,
      'applicationCryptogram': instance.applicationCryptogram,
      'verificationMethod': instance.verificationMethod,
      'verificationResults': instance.verificationResults,
      'statementDescription': instance.statementDescription,
      'deviceDetails': instance.deviceDetails,
      'refundRequiresCardPresence': instance.refundRequiresCardPresence,
    };
