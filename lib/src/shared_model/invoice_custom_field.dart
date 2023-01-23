import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'invoice_custom_field.g.dart';

@JsonSerializable()
class InvoiceCustomField extends Equatable {
  const InvoiceCustomField({
    this.label,
    this.placement,
    this.value,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [InvoiceCustomField]
  factory InvoiceCustomField.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCustomFieldFromJson(json);

  /// Converts a [InvoiceCustomField] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$InvoiceCustomFieldToJson(this);

  /// The label or title of the custom field. This field is required for a
  /// custom field.
  final String? label;

  /// The location of the custom field on the invoice. This field is required f
  /// or a custom field.
  final InvoiceCustomFieldPlacement? placement;

  /// The text of the custom field. If omitted, only the label is rendered.
  final String? value;

  @override
  List<Object?> get props => [label, placement, value];
}
