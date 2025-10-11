import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_cubit.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HungryCubit>(context);
    return BlocConsumer<HungryCubit, HungryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(233, 2, 73, 27),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.transparent,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  selectedItemColor: ColorsApp.wihteColor,
                  unselectedItemColor: ColorsApp.grayLight,
                  elevation: 0,
                  currentIndex: cubit.currentIndex,
                  onTap: cubit.changeBottomNav,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart),
                      label: 'Cart',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: 'Favorite',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
