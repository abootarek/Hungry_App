import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hungry/core/networking/api_errer_medol.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.homeStateLoading() = HomeStateLoading;
  const factory HomeState.homeStateSuccess(HomeResponse homeResponse) =
      HomeStateSuccess;
  const factory HomeState.homeStateFailure(ApiErrorModel apiErrorModel) =
      HomeStateFailure;
}
