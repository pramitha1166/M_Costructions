import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';
import 'package:m_constructions/presentation/dashboard/screens/widgets/delivery_row.dart';

class DeliveryLogs extends StatelessWidget {
  const DeliveryLogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    child: Center(child: Text('Item')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: Center(child: Text('Quantity')),
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
          DeliveryRow(),
          DeliveryRow(),
          DeliveryRow(),
          DeliveryRow(),
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
