import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part '{{#snakeCase}}{{{name}}}{{/snakeCase}}.g.dart';

@JsonSerializable()
class {{#pascalCase}}{{{name}}}{{/pascalCase}}Event extends WebhookEvent {
  const {{#pascalCase}}{{{name}}}{{/pascalCase}}Event({
    required super.merchantId,
    required super.type,
    required super.eventId,
    required super.createdAt,
    required this.data,
  });

  /// Converts a [Map] to an [{{#pascalCase}}{{{name}}}{{/pascalCase}}Event]
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}Event.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{{name}}}{{/pascalCase}}EventFromJson(json);

  /// Converts a [{{#pascalCase}}{{{name}}}{{/pascalCase}}Event] to a [Map]
  @override
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{{name}}}{{/pascalCase}}EventToJson(this);

  final {{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookData data;

  @override
  List<Object?> get props => [...super.props, data];
}

@JsonSerializable()
class {{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookData extends WebhookData {
  const {{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookData({
    required super.id,
    required super.type,
    required this.object,
  });

    /// Converts a [Map] to an [{{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookData]
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookData.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookDataFromJson(json);

  /// Converts a [{{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookData] to a [Map]
  @override
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{{name}}}{{/pascalCase}}WebhookDataToJson(this);

  final dynamic object; // TODO: define object type

  @override
  List<Object?> get props => [...super.props, object];
}
