import 'package:json_annotation/json_annotation.dart';

import 'package:square_connect/square_connect.dart';

part 'list_merchants.g.dart';

@JsonSerializable()
class ListMerchantsResponse extends SquareResponse {
  const ListMerchantsResponse({
    required this.merchants,
    this.cursor,
    List<SquareError>? errors,
  }) : super(errors: errors);

  /// Converts a [Map] to an [ListMerchantsResponse]
  factory ListMerchantsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListMerchantsResponseFromJson(json);

  /// Converts a [ListMerchantsResponse] to a [Map]
  Map<String, dynamic> toJson() => _$ListMerchantsResponseToJson(this);

  final List<Merchant> merchants;
  final int? cursor;

  @override
  List<Object?> get props => [merchants, cursor, errors];
}
