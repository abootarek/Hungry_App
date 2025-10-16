import 'package:hungry/core/networking/api_errer_handler.dart';
import 'package:hungry/core/networking/api_result.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_response.dart';

class ProfileRepo {
  final ApisServices apisServices;

  ProfileRepo(this.apisServices);

  Future<ApiResult<ProfileResponse>> getProfile({required String token}) async {
    try {
      final response = await apisServices.getProfile(token);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
