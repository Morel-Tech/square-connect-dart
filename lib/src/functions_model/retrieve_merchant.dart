import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_merchant.g.dart';

@JsonSerializable()
class RetrieveMerchantResponse extends SquareResponse {
  const RetrieveMerchantResponse({
    required this.merchant,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [RetrieveMerchantResponse]
  factory RetrieveMerchantResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveMerchantResponseFromJson(json);

  /// Converts a [RetrieveMerchantResponse] to a [Map]
  Map<String, dynamic> toJson() => _$RetrieveMerchantResponseToJson(this);

  final Merchant merchant;

  @override
  List<Object?> get props => [merchant, errors];
}
