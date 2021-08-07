import 'package:flutter/material.dart';

class KeyText extends StatelessWidget {
  final String msg;
  const KeyText({
    Key key,
    this.msg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
