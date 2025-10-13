import 'package:hungry/core/networking/api_errer_handler.dart';
import 'package:hungry/core/networking/api_result.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_request.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_response.dart';

class LoginRepo {
  final ApisServices apisServices;
  LoginRepo(this.apisServices);

  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final response = await apisServices.login(loginRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
