import 'package:square_connect/square_connect.dart';

const _mapStringtoSortOrder = {
  'ASC': SortOrder.ascending,
  'DESC': SortOrder.descending,
};


SortOrder getSortOrderFromString(String input) =>
    _mapStringtoSortOrder[input];
String getStringFromSortOrder(SortOrder input) =>
    _mapStringtoSortOrder.keys
        .singleWhere((value) => _mapStringtoSortOrder[value] == input);