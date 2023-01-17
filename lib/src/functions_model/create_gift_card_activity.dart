import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'create_gift_card_activity.g.dart';

@JsonSerializable()
class CreateGiftCardActivityRequest extends Equatable {
  const CreateGiftCardActivityRequest({
    required this.idempotencyKey,
    required this.giftCardActivity,
  });

  /// Converts a [Map] to an [CreateGiftCardActivityRequest]
  factory CreateGiftCardActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCardActivityRequestFromJson(json);

  /// Converts a [CreateGiftCardActivityRequest] to a [Map]
  Map<String, dynamic> toJson() => _$CreateGiftCardActivityRequestToJson(this);

  /// A unique string that identifies the CreateGiftCardActivity request.
  final String idempotencyKey;

  /// The activity to create for the gift card. This activity must specify
  /// `gift_card_id` or `gift_card_gan` for the target gift card, the
  /// `location_id` where the activity occurred, and the activity `type` along
  /// with the corresponding activity details.
  final GiftCardActivity giftCardActivity;

  @override
  List<Object?> get props => [idempotencyKey, giftCardActivity];
}

@JsonSerializable()
class CreateGiftCardActivityResponse extends SquareResponse {
  const CreateGiftCardActivityResponse({this.giftCardActivity, super.errors});

  /// Converts a [Map] to an [CreateGiftCardActivityResponse]
  factory CreateGiftCardActivityResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCardActivityResponseFromJson(json);

  /// Converts a [CreateGiftCardActivityResponse] to a [Map]
  Map<String, dynamic> toJson() => _$CreateGiftCardActivityResponseToJson(this);

  /// The gift card activity that was created.
  final GiftCardActivity? giftCardActivity;

  @override
  List<Object?> get props => [giftCardActivity, errors];
}
