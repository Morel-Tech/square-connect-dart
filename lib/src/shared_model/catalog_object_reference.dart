import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_object_reference.g.dart';

@JsonSerializable()
class CatalogObjectReference extends Equatable {
  const CatalogObjectReference({
    this.catalogVersion,
    this.objectId,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CatalogObjectReference]
  factory CatalogObjectReference.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectReferenceFromJson(json);

  /// Converts a [CatalogObjectReference] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CatalogObjectReferenceToJson(this);

  final int? catalogVersion;
  final String? objectId;

  @override
  List<Object?> get props => [catalogVersion, objectId];
}
