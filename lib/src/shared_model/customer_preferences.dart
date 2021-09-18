import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_preferences.g.dart';

/// {@template customer_preferences}
/// Represents communication preferences for the customer profile.
/// {@endtemplate}
@JsonSerializable()
class CustomerPreferences extends Equatable {
  /// @macro {@macro customer_preferences}
  const CustomerPreferences({
    this.emailUnsubscribed,
  });

  /// Converts a [Map] to an [CustomerPreferences]
  factory CustomerPreferences.fromJson(Map<String, dynamic> json) =>
      _$CustomerPreferencesFromJson(json);

  /// Converts a [CustomerPreferences] to a [Map]
  Map<String, dynamic> toJson() => _$CustomerPreferencesToJson(this);

  /// Indicates whether the customer has unsubscribed from marketing campaign
  /// emails. A value of true means that the customer chose to opt out of email
  /// marketing from the current Square seller or from all Square sellers. This
  /// value is read-only from the Customers API.
  final bool? emailUnsubscribed;

  @override
  List<Object?> get props => [emailUnsubscribed];
}
