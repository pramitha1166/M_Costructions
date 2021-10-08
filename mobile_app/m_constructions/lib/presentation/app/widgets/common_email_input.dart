import 'package:flutter/material.dart';

class CommonEmailInput extends StatelessWidget {
  const CommonEmailInput({Key? key, required this.onChanged}) : super(key: key);

  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          hintText: 'Enter valid email id as abc@gmail.com'),
    );
  }
}
