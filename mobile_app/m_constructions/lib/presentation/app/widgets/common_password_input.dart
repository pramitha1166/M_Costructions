import 'package:flutter/material.dart';

class CommonPasswordInput extends StatelessWidget {
  const CommonPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          hintText: 'Enter secure password'),
    );
  }
}
