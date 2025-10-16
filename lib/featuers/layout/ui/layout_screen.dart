import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/networking/di.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';
import 'package:hungry/featuers/auth/profile/ui/profile_screen.dart';
import 'package:hungry/featuers/card/card_screen.dart';
import 'package:hungry/featuers/favorites/favorites_screen.dart';
import 'package:hungry/featuers/home/logic/cubit/home_cubit.dart';
import 'package:hungry/featuers/home/ui/home_screen.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_cubit.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HungryCubit>(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(getIt())..getAllProducts(),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit(getIt())..getProfile(),
        ),
      ],
      child: BlocConsumer<HungryCubit, HungryState>(
        listener: (context, state) {},
        builder: (context, state) {
          final screens = [
            const HomeScreen(),
            const CardScreen(),
            const FavoritesScreen(),
            const ProfileScreen(),
          ];

          return SafeArea(
            child: Scaffold(
              body: screens[cubit.currentIndex],
              bottomNavigationBar: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(233, 2, 73, 27),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
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
                        label: 'Shop',
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
      ),
    );
  }
}
