import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hungry/core/networking/api_constans.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_request.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_response.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_request.dart';
import 'package:hungry/featuers/auth/sign_in/data/model/login_response.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_request.dart';
import 'package:hungry/featuers/auth/sign_up/data/model/sign_up_response.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart';
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
  // Profile
  @GET(ApiConstant.profile)
  Future<ProfileResponse> getProfile(
    @Header("Authorization") String token,
  );
  // Update Profile

  @MultiPart()
  @POST(ApiConstant.updateProfile)
  Future<ProfileResponse> updateProfile(
    @Header('Authorization') String token,
    @Part(name: 'name') String? name,
    @Part(name: 'email') String? email,
    @Part(name: 'address') String? address,
    @Part(name: 'image') File? image,
  );

  // get Card
  @GET(ApiConstant.cart)
  Future<CardResponse> getCard(
    @Header("Authorization") String token,
  );
}
