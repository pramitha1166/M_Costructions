import 'package:flutter/material.dart';

class DeliveryRow extends StatelessWidget {
  const DeliveryRow({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

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
            child: Center(child: Text(description)),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            child: Center(
                child: Icon(
              Icons.check_box,
              color: Colors.amber,
            )),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
