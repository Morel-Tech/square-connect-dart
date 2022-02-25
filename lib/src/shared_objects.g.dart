// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalRecipient _$AdditionalRecipientFromJson(Map<String, dynamic> json) =>
    AdditionalRecipient(
      locationId: json['location_id'] as String,
      description: json['description'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      receivableId: json['receivable_id'] as String,
    );

Map<String, dynamic> _$AdditionalRecipientToJson(
        AdditionalRecipient instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'description': instance.description,
      'amount_money': instance.amountMoney.toJson(),
      'receivable_id': instance.receivableId,
    };

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      startDate:
          SquareDate.fromJson(json['start_date'] as Map<String, dynamic>),
      endDate: SquareDate.fromJson(json['end_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) => <String, dynamic>{
      'start_date': instance.startDate.toJson(),
      'end_date': instance.endDate.toJson(),
    };

SquareDate _$SquareDateFromJson(Map<String, dynamic> json) => SquareDate(
      year: json['year'] as int,
      month: json['month'] as int,
      day: json['day'] as int,
    );

Map<String, dynamic> _$SquareDateToJson(SquareDate instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };
