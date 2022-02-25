import 'package:json_annotation/json_annotation.dart';

enum CustomerSortField {
  @JsonValue('CREATED_AT')
  createdAt,
  @JsonValue('DEFAULT')
  defaultValue,
}

extension CustomerSortFieldHelper on CustomerSortField {
  String toJson() {
    switch (this) {
      case CustomerSortField.createdAt:
        return 'CREATED_AT';
      case CustomerSortField.defaultValue:
        return 'DEFAULT';
    }
  }
}
