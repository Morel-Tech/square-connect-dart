import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'source_application.g.dart';

@JsonSerializable()
class SourceApplication extends Equatable {
  const SourceApplication({
    required this.product,
    required this.applicationId,
    required this.name,
  });

  /// Converts a [Map] to an [SourceApplication]
  factory SourceApplication.fromJson(Map<String, dynamic> json) =>
      _$SourceApplicationFromJson(json);

  /// Converts a [SourceApplication] to a [Map]
  Map<String, dynamic> toJson() => _$SourceApplicationToJson(this);

  final Product product;
  final String applicationId;
  final String name;

  @override
  List<Object?> get props => [product, applicationId, name];
}
