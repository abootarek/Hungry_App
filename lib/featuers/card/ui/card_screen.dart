import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/show_generic_search_dailog.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart'; // نحتاج Product هنا
import 'package:hungry/featuers/card/logic/cubit/card_cubit.dart';
import 'package:hungry/featuers/card/ui/widgets/bloc_builder.dart';
import 'package:hungry/featuers/card/ui/widgets/item_list_view.dart';
// import 'package:hungry/featuers/home/data/model/home_response.dart'; // لم نعد بحاجة إلى HomeData

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.wihteColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Card', style: TextStyles.font24BlackBold),
        actions: [
          IconButton(
            onPressed: () {
              final cardCubit = context.read<CardCubit>();

              final List<Product> allCartItems = cardCubit.state.maybeWhen(
                success: (cardResponse) => cardResponse.data?.items ?? [],
                orElse: () => [],
              );

              showGenericSearchDialog<Product>(
                searchHint: 'Search...',
                isGrid: false,
                context: context,
                items: allCartItems,
                searchFields: [
                  (product) => product.name ?? '',
                ],
                itemBuilder: (context, product) {
                  return Padding(
                    padding: EdgeInsets.symmetric(),
                    child: ItemListView(product: product),
                  );
                },
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: ColorsApp.wihteColor,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Center(child: BlocBuilderCustom()),
        ),
      ),
    );
  }
}
