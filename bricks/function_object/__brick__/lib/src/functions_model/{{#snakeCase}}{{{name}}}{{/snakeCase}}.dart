import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part '{{#snakeCase}}{{{name}}}{{/snakeCase}}.g.dart';

@JsonSerializable()
class {{#pascalCase}}{{{name}}}{{/pascalCase}}Request extends Equatable {
  const {{#pascalCase}}{{{name}}}{{/pascalCase}}Request();

  /// Converts a [Map] to an [{{#pascalCase}}{{{name}}}{{/pascalCase}}Request]
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}Request.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{{name}}}{{/pascalCase}}RequestFromJson(json);

  /// Converts a [{{#pascalCase}}{{{name}}}{{/pascalCase}}Request] to a [Map]
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{{name}}}{{/pascalCase}}RequestToJson(this);

  @override
  List<Object?> get props => [];
}

@JsonSerializable()
class {{#pascalCase}}{{{name}}}{{/pascalCase}}Response extends SquareResponse {
  const {{#pascalCase}}{{{name}}}{{/pascalCase}}Response({super.errors});

  /// Converts a [Map] to an [{{#pascalCase}}{{{name}}}{{/pascalCase}}Response]
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}Response.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{{name}}}{{/pascalCase}}ResponseFromJson(json);

  /// Converts a [{{#pascalCase}}{{{name}}}{{/pascalCase}}Response] to a [Map]
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{{name}}}{{/pascalCase}}ResponseToJson(this);

  @override
  List<Object?> get props => [errors];
}
