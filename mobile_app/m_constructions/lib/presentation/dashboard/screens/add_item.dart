import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/presentation/app/widgets/common_input.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';

class AddItem extends HookConsumerWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _itemName = useState('');
    final _itemQuantity = useState('');

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: CommonInput(
                description: "Enter a valid item name",
                onChange: (value) {
                  _itemName.value = value ?? "";
                },
                title: "item Name",
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: CommonInput(
              description: "Enter a valid Quantity",
              onChange: (value) {
                _itemQuantity.value = value ?? "";
              },
              title: "Quantity",
            ),
          ),
          SizedBox(
            height: 130,
          ),
          CommonRoundedButton(
            lable: "Add Item",
            onPressed: () async {
              var dio = Dio();
              await dio.post('http://192.168.8.100:5000/api/v2/product/add',
                  data: {
                    'title': _itemName.value,
                    'quantity': _itemQuantity.value
                  });
              _showMyDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Successfully Added'),
                Text('Item has been successully added'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
