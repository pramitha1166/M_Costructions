import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/site_manager_dashboard/screens/widgets/sm_order_list_item.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (i) => "Item $i");

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SmOrderListItem(),
        );
      },
    );
  }
}
