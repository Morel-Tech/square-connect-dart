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
  });

  /// Converts a [Map] to an [{{#pascalCase}}{{{name}}}{{/pascalCase}}Event]
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}Event.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{{name}}}{{/pascalCase}}EventFromJson(json);

  /// Converts a [{{#pascalCase}}{{{name}}}{{/pascalCase}}Event] to a [Map]
  @override
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{{name}}}{{/pascalCase}}EventToJson(this);


  @override
  List<Object> get props => [...super.props];
}
