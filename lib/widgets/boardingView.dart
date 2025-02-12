import 'package:flutter/material.dart';
import 'package:konekto/widgets/textView.dart';

boardingView(gambar,title, desc) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(gambar),
      SizedBox(height: 20),
      textView(
        const EdgeInsets.only(left: 100, right: 100),
        title,
        TextAlign.center,
        Color(0x083344),
        FontWeight.bold,
        24,
      ),
      SizedBox(height: 20),
      textView(
        const EdgeInsets.only(left: 50, right: 50),
        desc,
        TextAlign.center,
        Color(0x083344),
        FontWeight.w400,
        16,
      ),
    ],
  );
}