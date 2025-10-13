import 'package:hungry/core/networking/api_errer_handler.dart';
import 'package:hungry/core/networking/api_result.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';

class HomeRepo {
  final ApisServices apisServices;
  HomeRepo(
    this.apisServices,
  );
  Future<ApiResult<HomeResponse>> getProducts({required String token}) async {
    try {
      final response = await apisServices.getProducts(token);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
