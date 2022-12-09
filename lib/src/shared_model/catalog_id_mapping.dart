import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_id_mapping.g.dart';

@JsonSerializable()
class CatalogIdMapping extends Equatable {
  const CatalogIdMapping({
    this.clientObjectId,
    this.objectId,
  });

  /// Converts a [Map] to an [CatalogIdMapping]
  factory CatalogIdMapping.fromJson(Map<String, dynamic> json) =>
      _$CatalogIdMappingFromJson(json);

  /// Converts a [CatalogIdMapping] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogIdMappingToJson(this);

  final String? clientObjectId;
  final String? objectId;

  @override
  List<Object?> get props => [clientObjectId, objectId];
}
