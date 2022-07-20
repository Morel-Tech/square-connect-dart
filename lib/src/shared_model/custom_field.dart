import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_field.g.dart';

@JsonSerializable()
class CustomField extends Equatable {
  const CustomField({
    required this.title,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [CustomField]
  factory CustomField.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldFromJson(json);

  /// Converts a [CustomField] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CustomFieldToJson(this);

  final String title;

  @override
  List<Object?> get props => [title];
}
