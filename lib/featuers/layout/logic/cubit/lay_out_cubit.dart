import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/featuers/auth/profile/profile_screen.dart';
import 'package:hungry/featuers/card/card_screen.dart';
import 'package:hungry/featuers/favorites/favorites_screen.dart';
import 'package:hungry/featuers/home/home_screen.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_state.dart';

class HungryCubit extends Cubit<HungryState> {
  HungryCubit() : super(ShopInitialState());

  static HungryCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

 List<Widget> screens = [
    HomeScreen(),
    CardScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }
}