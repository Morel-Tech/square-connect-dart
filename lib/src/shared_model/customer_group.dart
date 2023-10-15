import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_group.g.dart';

@JsonSerializable()
class CustomerGroup extends Equatable {
  const CustomerGroup({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomerGroup]
  factory CustomerGroup.fromJson(Map<String, dynamic> json) =>
      _$CustomerGroupFromJson(json);

  /// Converts a [CustomerGroup] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomerGroupToJson(this);

  /// **Read only** A unique Square-generated ID for the customer group.
  final String? id;

  /// The name of the customer group.
  final String? name;

  /// **Read only** The timestamp when the customer group was created, in
  /// RFC 3339 format.
  ///
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  ///
  /// UTC: 2020-01-26T02:25:34Z
  ///
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final DateTime? createdAt;

  /// **Read only** The timestamp when the customer group was last updated,
  /// in RFC 3339 format.
  ///
  /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
  ///
  /// UTC: 2020-01-26T02:25:34Z
  ///
  /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [id, name, createdAt, updatedAt];
}
