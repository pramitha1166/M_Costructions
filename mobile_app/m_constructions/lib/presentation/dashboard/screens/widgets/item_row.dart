import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
            child: Center(
              child: CommonRoundedButton(
                height: 28,
                lable: 'Remove',
                width: 80,
                fontSize: 12,
                onPressed: () {},
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
