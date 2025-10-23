import 'package:flutter/material.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart';
import 'package:hungry/featuers/card/ui/widgets/item_list_view.dart';

class ListViewBuilderCustom extends StatelessWidget {
  final DataProduct? dataProduct;

  const ListViewBuilderCustom({super.key, this.dataProduct});

  @override
  Widget build(BuildContext context) {
    final items = dataProduct?.items ?? [];

    return ListView.builder(
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ItemListView(product: items[index]);
      },
    );
  }
}
