// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';
import 'package:hungry/featuers/home/data/repo/home_repo.dart';
import 'package:hungry/featuers/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeState.initial());

  // bool isFirstLoad = false;
  void getAllProducts() async {
    emit(HomeState.homeStateLoading());
    final token = await SharedPrefHelper.getData(key: SharedPrefKeys.token);

    final response = await homeRepo.getProducts(
      token: 'Bearer $token',
    );

    response.when(
      success: (response) => emit(HomeState.homeStateSuccess(response)),
      failure: (error) => emit(HomeState.homeStateFailure(error)),
    );
  }

  dispose() {
    super.close();
  }
}
