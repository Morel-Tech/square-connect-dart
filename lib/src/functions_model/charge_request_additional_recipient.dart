import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'charge_request_additional_recipient.g.dart';

@JsonSerializable()
class ChargeRequestAdditionalRecipientRequest extends Equatable {
  const ChargeRequestAdditionalRecipientRequest();

  /// Converts a [Map] to an [ChargeRequestAdditionalRecipientRequest]
  factory ChargeRequestAdditionalRecipientRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChargeRequestAdditionalRecipientRequestFromJson(json);

  /// Converts a [ChargeRequestAdditionalRecipientRequest] to a [Map]
  Map<String, dynamic> toJson() =>
      _$ChargeRequestAdditionalRecipientRequestToJson(this);

  @override
  List<Object?> get props {
    return [];
  }
}

@JsonSerializable()
class ChargeRequestAdditionalRecipientResponse extends SquareResponse {
  const ChargeRequestAdditionalRecipientResponse({
    super.errors,
  });

  /// Converts a [Map] to an [ChargeRequestAdditionalRecipientResponse]
  factory ChargeRequestAdditionalRecipientResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChargeRequestAdditionalRecipientResponseFromJson(json);

  /// Converts a [ChargeRequestAdditionalRecipientResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$ChargeRequestAdditionalRecipientResponseToJson(this);

  @override
  List<Object?> get props => [errors];
}
