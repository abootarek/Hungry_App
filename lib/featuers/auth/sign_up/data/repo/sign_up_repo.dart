import 'package:hungry/core/networking/api_errer_handler.dart';
import 'package:hungry/core/networking/api_result.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_request.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_response.dart';

class SignUpRepo {
  final ApisServices apisServices;

  SignUpRepo(this.apisServices);

  Future<ApiResult<SignUpResponse>> signUp(SignUpRequest signUpRequest) async {
    try {
      final response = await apisServices.signUp(signUpRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
