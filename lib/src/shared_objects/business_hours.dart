import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'business_hours.g.dart';

/// {@template business_hours}
/// An object representing the full business hours for a location.
/// {@endtemplate}
@JsonSerializable()
class BusinessHours extends Equatable {
  /// {@macro business_hours}
  const BusinessHours({
    required this.periods,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [BusinessHours]
  factory BusinessHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursFromJson(json);

  /// Converts a [BusinessHours] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$BusinessHoursToJson(this);

  /// The list of business periods for a given location.
  final List<BusinessHoursPeriod> periods;

  @override
  List<Object> get props => [periods];
}
