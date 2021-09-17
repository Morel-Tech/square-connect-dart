import 'package:equatable/equatable.dart';
import 'package:square_connect/square_connect.dart';

/// {@template square_response}
/// Astract SquareResponse for concrete SquareResponses
/// {@endtemplate}
abstract class SquareResponse extends Equatable {
  /// @macro {@macro square_response}
  const SquareResponse({required this.errors});

  /// List of SquareErrors to throw.
  final List<SquareError>? errors;
}
