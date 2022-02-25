import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'customer_filter.g.dart';

@JsonSerializable()
class CustomerFilter extends Equatable {
  const CustomerFilter({
    this.createdAt,
    this.creationSource,
    this.emailAddress,
    this.groupIds,
    this.phoneNumber,
    this.referenceId,
    this.updatedAt,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomerFilter]
  factory CustomerFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerFilterFromJson(json);

  /// Converts a [CustomerFilter] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomerFilterToJson(this);

  final TimeRange? createdAt;
  final CustomerCreationSourceFilter? creationSource;
  final CustomerTextFilter? emailAddress;
  final FilterValue? groupIds;
  final CustomerTextFilter? phoneNumber;
  final CustomerTextFilter? referenceId;
  final TimeRange? updatedAt;

  @override
  List<Object?> get props => [
        createdAt,
        creationSource,
        emailAddress,
        groupIds,
        phoneNumber,
        referenceId,
        updatedAt,
      ];
}
