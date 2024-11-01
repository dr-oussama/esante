import 'package:flutter/material.dart';

class LayoutUtils {
  static Widget iconText(Icon iconWidget, Text textWidget) {
    return Row(
      children: [
        iconWidget,
        SizedBox(width: 5),
        textWidget,
      ],
    );
  }
}
