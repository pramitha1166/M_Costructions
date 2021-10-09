import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/product_model.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';
import 'package:m_constructions/presentation/dashboard/screens/widgets/delivery_row.dart';

class DeliveryLogs extends HookConsumerWidget {
  const DeliveryLogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryData = useState([]);
    useEffect(() {
      Dio()
          .get('http://192.168.8.100:5000/api/v2/deliverylogs/viewall')
          .then((value) {
        inventoryData.value =
            (value.data as List).map((x) => Product.fromJson(x)).toList();
      });
    }, const []);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    child: Center(child: Text('Title')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: Center(child: Text('Description')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: Center(child: Text('Action')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          DeliveryRow(
            title: "Title 1",
            description: "descrioptn 1",
          ),
          DeliveryRow(
            title: "Title 2",
            description: "descrioptn 2",
          ),
          DeliveryRow(
            title: "Title 3",
            description: "descrioptn 3",
          ),
          DeliveryRow(
            title: "Title 4",
            description: "descrioptn 4",
          ),
          SizedBox(
            height: 100,
          ),
          CommonRoundedButton(
            lable: "Accept Delivery",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
