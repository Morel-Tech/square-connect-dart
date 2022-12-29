import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'additional_recipient.g.dart';

/// An object representing an additional recipient (other than the merchant)
/// receiving a portion of this tender.
@JsonSerializable()
class AdditionalRecipient extends Equatable {
  const AdditionalRecipient({
    required this.locationId,
    required this.description,
    required this.amountMoney,
    required this.receivableId,
  });

  /// Converts a [Map] to an [AdditionalRecipient]
  factory AdditionalRecipient.fromJson(Map<String, dynamic> json) =>
      _$AdditionalRecipientFromJson(json);

  /// Converts a [AdditionalRecipient] to a [Map]
  Map<String, dynamic> toJson() => _$AdditionalRecipientToJson(this);

  final String locationId;
  final String description;
  final Money amountMoney;
  final String receivableId;

  @override
  List<Object?> get props => [
        locationId,
        description,
        amountMoney,
        receivableId,
      ];
}
