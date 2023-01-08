// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerPreferences _$CustomerPreferencesFromJson(Map<String, dynamic> json) =>
    CustomerPreferences(
      emailUnsubscribed: json['email_unsubscribed'] as bool?,
    );

Map<String, dynamic> _$CustomerPreferencesToJson(CustomerPreferences instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email_unsubscribed', instance.emailUnsubscribed);
  return val;
}
