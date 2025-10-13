import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hungry/core/networking/api_factory.dart';
import 'package:hungry/core/networking/api_services.dart';
import 'package:hungry/featuers/auth/sign_in/data/repo/login_repo.dart';
import 'package:hungry/featuers/auth/sign_up/data/repo/sign_up_repo.dart';
import 'package:hungry/featuers/home/data/repo/home_repo.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // dio and ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApisServices>(() => ApisServices(dio));
// Auth
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  // Home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
