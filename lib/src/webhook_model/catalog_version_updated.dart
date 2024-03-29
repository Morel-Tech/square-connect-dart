import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'catalog_version_updated.g.dart';

@JsonSerializable()
class CatalogVersionUpdatedEvent extends WebhookEvent {
  const CatalogVersionUpdatedEvent({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [CatalogVersionUpdatedEvent]
  factory CatalogVersionUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$CatalogVersionUpdatedEventFromJson(json);

  /// Converts a [CatalogVersionUpdatedEvent] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$CatalogVersionUpdatedEventToJson(this);

  final CatalogVersionUpdatedWebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class CatalogVersionUpdatedWebhookData extends WebhookData {
  const CatalogVersionUpdatedWebhookData({
    required super.id,
    required this.object,
    required super.type,
  });

  /// Converts a [Map] to an [CatalogVersionUpdatedWebhookData]
  factory CatalogVersionUpdatedWebhookData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogVersionUpdatedWebhookDataFromJson(json);

  /// Converts a [CatalogVersionUpdatedWebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() =>
      _$CatalogVersionUpdatedWebhookDataToJson(this);

  final CatalogVersionUpdatedWebhookObject object;

  @override
  List<Object?> get props => [...super.props, object];
}

@JsonSerializable()
class CatalogVersionUpdatedWebhookObject extends Equatable {
  const CatalogVersionUpdatedWebhookObject({
    required this.catalogVersion,
  });

  /// Converts a [Map] to an [CatalogVersionUpdatedWebhookObject]
  factory CatalogVersionUpdatedWebhookObject.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogVersionUpdatedWebhookObjectFromJson(json);

  /// Converts a [CatalogVersionUpdatedWebhookObject] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CatalogVersionUpdatedWebhookObjectToJson(this);

  final CatalogVersionUpdatedWebhookCatalogVersion catalogVersion;

  @override
  List<Object?> get props => [catalogVersion];
}

@JsonSerializable()
class CatalogVersionUpdatedWebhookCatalogVersion extends Equatable {
  const CatalogVersionUpdatedWebhookCatalogVersion({
    required this.updatedAt,
  });

  /// Converts a [Map] to an [CatalogVersionUpdatedWebhookCatalogVersion]
  factory CatalogVersionUpdatedWebhookCatalogVersion.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogVersionUpdatedWebhookCatalogVersionFromJson(json);

  /// Converts a [CatalogVersionUpdatedWebhookCatalogVersion] to a [Map]
  Map<String, dynamic> toJson() =>
      _$CatalogVersionUpdatedWebhookCatalogVersionToJson(this);

  final DateTime updatedAt;

  @override
  List<Object?> get props => [updatedAt];
}
