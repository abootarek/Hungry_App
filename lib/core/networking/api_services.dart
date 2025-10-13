import 'package:dio/dio.dart';
import 'package:hungry/core/networking/api_constans.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_request.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_response.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_request.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_response.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApisServices {
  factory ApisServices(Dio dio, {String baseUrl}) = _ApisServices;
// sign in service
  @POST(ApiConstant.login)
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );
  // sign up
  @POST(ApiConstant.register)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequest signUpRequest,
  );
  // products
  @GET(ApiConstant.products)
  Future<HomeResponse> getProducts(
    @Header("Authorization") String token,
  );
}
