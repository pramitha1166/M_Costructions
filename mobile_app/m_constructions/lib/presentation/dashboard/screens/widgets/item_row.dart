import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({
    Key? key,
    required this.title,
    required this.quantity,
    required this.id,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String quantity;
  final String id;
  final void Function(String? id) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            height: 40,
            child: Center(child: Text(title)),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            child: Center(child: Text(quantity)),
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
                  onPressed: () {
                    onPressed(id);
                    _showMyDialog(context);
                  }),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
      ],
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
                Text('Successfully Deletcted'),
                Text('Item has been successully delected'),
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
