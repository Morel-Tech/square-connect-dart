import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkout_options.g.dart';

@JsonSerializable()
class CheckoutOptions extends Equatable {
  const CheckoutOptions();

  /// Converts a [Map]<[String], [dynamic]> to a [CheckoutOptions]
  factory CheckoutOptions.fromJson(Map<String, dynamic> json) =>
      _$CheckoutOptionsFromJson(json);

  /// Converts a [CheckoutOptions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$CheckoutOptionsToJson(this);

  @override
  List<Object?> get props => [];
}
