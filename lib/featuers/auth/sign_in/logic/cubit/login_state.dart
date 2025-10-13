import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hungry/core/networking/api_errer_medol.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(LoginResponse loginResponse) = Success;
  const factory LoginState.failure(ApiErrorModel apiErrorModel) = Error;
}
