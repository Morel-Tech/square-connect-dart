import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_image.g.dart';

@JsonSerializable()
class CatalogImage extends Equatable {
  const CatalogImage({
    this.name,
    this.url,
    this.caption,
  });

  /// Converts a [Map] to an [CatalogImage]
  factory CatalogImage.fromJson(Map<String, dynamic> json) =>
      _$CatalogImageFromJson(json);

  /// Converts a [CatalogImage] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogImageToJson(this);

  final String? name;
  final String? url;
  final String? caption;

  @override
  List<Object?> get props => [name, url, caption];
}
