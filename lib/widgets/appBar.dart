import 'package:flutter/material.dart';
import 'package:konekto/widgets/textView.dart';

appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          margin: const EdgeInsets.only(right: 5, left: 10),
          child: Image.asset('assets/images/logo.png'),
        ),
        textView(
          EdgeInsets.all(0),
          'E-Learning Palcomtech',
          TextAlign.center,
          Colors.black,
          FontWeight.w500,
          14,
        ),
      ],
    ),
    automaticallyImplyLeading: false,
  );
}