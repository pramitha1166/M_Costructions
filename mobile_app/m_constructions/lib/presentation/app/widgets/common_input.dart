import 'package:flutter/material.dart';

class CommonInput extends StatelessWidget {
  CommonInput({
    Key? key,
    required this.onChange,
    required this.title,
    required this.description,
  }) : super(key: key);

  final Function(String? input) onChange;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: title,
          hintText: description),
    );
  }
}
