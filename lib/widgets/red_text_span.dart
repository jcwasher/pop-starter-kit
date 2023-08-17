import 'package:flutter/material.dart';

class RedTextSpan extends TextSpan {
  RedTextSpan({required String text})
      : super(text: text, style: TextStyle(color: Colors.red));
}
