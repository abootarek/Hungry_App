import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hungry/core/networking/api_errer_medol.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  
  const factory ApiResult.success(T data) = Success<T>;

  const factory ApiResult.failure(ApiErrorModel apiErrorModel) = Failure<T>;
}