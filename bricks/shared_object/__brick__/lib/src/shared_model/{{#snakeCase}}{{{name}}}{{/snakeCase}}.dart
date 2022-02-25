import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{#snakeCase}}{{{name}}}{{/snakeCase}}.g.dart';

@JsonSerializable()
class {{#pascalCase}}{{{name}}}{{/pascalCase}} extends Equatable {
  const {{#pascalCase}}{{{name}}}{{/pascalCase}}();

  /// Converts a [Map]<[String], [dynamic]> to a [{{#pascalCase}}{{{name}}}{{/pascalCase}}]
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{{name}}}{{/pascalCase}}FromJson(json);

  /// Converts a [{{#pascalCase}}{{{name}}}{{/pascalCase}}] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{{name}}}{{/pascalCase}}ToJson(this);

  @override
  List<Object?> get props => [];
}
