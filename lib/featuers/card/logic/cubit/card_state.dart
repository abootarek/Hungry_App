import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hungry/core/networking/api_errer_medol.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart';
part 'card_state.freezed.dart';

@freezed
class CardState<T> with _$CardState<T> {
  const factory CardState.initial() = _Initial;

  const factory CardState.loading() = Loading;

  const factory CardState.success(CardResponse cardResponse) = Success;

  const factory CardState.failure(ApiErrorModel apiErrorModel) = Failure;
}
