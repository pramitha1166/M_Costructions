import 'package:flutter/material.dart';

class CommonEmailInput extends StatelessWidget {
  const CommonEmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          hintText: 'Enter valid email id as abc@gmail.com'),
    );
  }
}
