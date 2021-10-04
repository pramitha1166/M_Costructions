import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';
import 'package:m_constructions/presentation/dashboard/screens/widgets/item_row.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ItemRow(),
        ItemRow(),
        ItemRow(),
        ItemRow(),
        SizedBox(
          height: 100,
        ),
        CommonRoundedButton(
          lable: "Accept Delivery",
          onPressed: () {},
        ),
      ],
    );
  }
}
