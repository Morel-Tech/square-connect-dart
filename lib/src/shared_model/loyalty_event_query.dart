import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'loyalty_event_query.g.dart';

@JsonSerializable()
class LoyaltyEventQuery extends Equatable {
  const LoyaltyEventQuery({
    this.filter,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [LoyaltyEventQuery]
  factory LoyaltyEventQuery.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventQueryFromJson(json);

  /// Converts a [LoyaltyEventQuery] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LoyaltyEventQueryToJson(this);

  final LoyaltyEventFilter? filter;

  @override
  List<Object?> get props => [filter];
}
