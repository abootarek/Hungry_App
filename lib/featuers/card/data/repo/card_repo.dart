import 'package:hungry/core/networking/api_errer_handler.dart';
import 'package:hungry/core/networking/api_result.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart';

class CardRepo {
  final ApisServices apisServices;
  CardRepo(this.apisServices);

  Future<ApiResult<CardResponse>> getCard({required String token}) async {
    try {
      final response = await apisServices.getCard(token);
      print('🛰️ Raw response: ${response.toString()}');

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
