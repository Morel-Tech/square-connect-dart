import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_source.g.dart';

@JsonSerializable()
class SubscriptionSource extends Equatable {
  const SubscriptionSource({
    required this.name,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [SubscriptionSource]
  factory SubscriptionSource.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSourceFromJson(json);

  /// Converts a [SubscriptionSource] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$SubscriptionSourceToJson(this);

  final String name;

  @override
  List<Object?> get props => [name];
}
