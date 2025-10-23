import 'dart:io';
import 'package:hungry/core/networking/api_errer_handler.dart';
import 'package:hungry/core/networking/api_result.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_request.dart';
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

  // ✅ Update Profile with optional image
  Future<ApiResult<ProfileResponse>> updateProfile({
    required String token,
    required ProfileRequest profileRequest,
    File? imageFile,
  }) async {
    try {
      final response = await apisServices.updateProfile(
        token,
        profileRequest.name,
        profileRequest.email,
        profileRequest.address,
        imageFile, // ممكن تبقى null
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
