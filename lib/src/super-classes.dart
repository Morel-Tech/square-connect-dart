import 'package:square_connect/square_connect.dart';

abstract class ApiResponse {
  List<SquareError> get errors;

  bool get hasErrors => this.errors != null && this.errors.length<0;
}
