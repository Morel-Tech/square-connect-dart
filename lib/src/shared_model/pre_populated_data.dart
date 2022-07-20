import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'pre_populated_data.g.dart';

@JsonSerializable()
class PrePopulatedData extends Equatable {
  const PrePopulatedData({
    this.buyerAddress,
    this.buyerEmail,
    this.buyerPhoneNumber,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [PrePopulatedData]
  factory PrePopulatedData.fromJson(Map<String, dynamic> json) =>
      _$PrePopulatedDataFromJson(json);

  /// Converts a [PrePopulatedData] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$PrePopulatedDataToJson(this);

  final Address? buyerAddress;
  final String? buyerEmail;
  final String? buyerPhoneNumber;

  @override
  List<Object?> get props => [buyerAddress, buyerEmail, buyerPhoneNumber];
}
