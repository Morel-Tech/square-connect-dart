import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_object_batch.g.dart';

@JsonSerializable()
class CatalogObjectBatch extends Equatable {
  const CatalogObjectBatch({
    required this.objects,
  });

  /// Converts a [Map] to an [CatalogObjectBatch]
  factory CatalogObjectBatch.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectBatchFromJson(json);

  /// Converts a [CatalogObjectBatch] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogObjectBatchToJson(this);

  final List<CatalogObject> objects;

  @override
  List<Object?> get props => [objects];
}
