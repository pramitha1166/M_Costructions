import 'package:flutter/material.dart';

class CommonRoundedButton extends StatelessWidget {
  const CommonRoundedButton({
    Key? key,
    required this.onPressed,
    this.height,
    this.width,
    this.fontSize,
    this.lable,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? fontSize;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? 250,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          lable ?? 'Login',
          style: TextStyle(color: Colors.black, fontSize: fontSize ?? 25),
        ),
      ),
    );
  }
}
