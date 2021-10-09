import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();
  const factory Failure.storage({String? errorMessage}) = _Storage;
}
