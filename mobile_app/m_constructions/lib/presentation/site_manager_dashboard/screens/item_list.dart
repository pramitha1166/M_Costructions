import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/presentation/site_manager_dashboard/screens/widgets/sm_order_list_item.dart';

class ItemList extends HookConsumerWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryData = useState([]);
    useEffect(() {
      Dio()
          .get('http://192.168.8.100:5000/api/v2/product/viewall')
          .then((value) => print(value));
    }, const []);
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
