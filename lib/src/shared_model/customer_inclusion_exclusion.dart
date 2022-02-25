import 'package:json_annotation/json_annotation.dart';

enum CustomerInclusionExclusion {
  @JsonValue('INCLUE')
  include,
  @JsonValue('EXCLUDE')
  exclude,
}
