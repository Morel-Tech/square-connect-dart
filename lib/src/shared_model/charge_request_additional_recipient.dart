import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'charge_request_additional_recipient.g.dart';

@JsonSerializable()
class ChargeRequestAdditionalRecipient extends Equatable {
  const ChargeRequestAdditionalRecipient({
    required this.amountMoney,
    required this.description,
    required this.locationId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a
  /// [ChargeRequestAdditionalRecipient]
  factory ChargeRequestAdditionalRecipient.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChargeRequestAdditionalRecipientFromJson(json);

  /// Converts a [ChargeRequestAdditionalRecipient] to a
  /// [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() =>
      _$ChargeRequestAdditionalRecipientToJson(this);

  final Money amountMoney;
  final String description;
  final String locationId;

  @override
  List<Object?> get props => [amountMoney, description, locationId];
}
