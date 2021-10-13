import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_source.g.dart';

@JsonSerializable()
class OrderSource extends Equatable {
  const OrderSource({
    required this.name,
  });

  /// Converts a [Map] to an [OrderSource]
  factory OrderSource.fromJson(Map<String, dynamic> json) =>
      _$OrderSourceFromJson(json);

  /// Converts a [OrderSource] to a [Map]
  Map<String, dynamic> toJson() => _$OrderSourceToJson(this);

  final String name;

  @override
  List<Object> get props => [name];
}
