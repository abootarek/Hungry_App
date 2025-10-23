// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';

import 'package:hungry/featuers/card/data/repo/card_repo.dart';
import 'package:hungry/featuers/card/logic/cubit/card_state.dart';

class CardCubit extends Cubit<CardState> {
  CardCubit(
    this.cardRepo,
  ) : super(CardState.initial());
  final CardRepo cardRepo;
  void getAllCard() async {
    emit(CardState.loading());
    final token =
        await SharedPrefHelper.getSecuredString(key: SharedPrefKeys.token);
    final response = await cardRepo.getCard(token: 'Bearer $token');

    response.when(
      success: (data) {
        emit(CardState.success(data));
      },
      failure: (error) {
        emit(CardState.failure(error));
      },
    );
  }

  // void incrementItem(Product product) {
  //   if (product.quantity != null) {
  //     product?.quantity??   = product.quantity! + 1;
  //     emit(CardState.success(state.data!)); // تعيد الحالة بعد التعديل
  //   }
  // }

  // void decrementItem(Product product) {
  //   if (product.quantity != null && product.quantity! > 0) {
  //     product.quantity = product.quantity! - 1;
  //     emit(CardState.success(state.data!));
  //   }
  // }
}
