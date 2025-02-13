import 'package:flutter/material.dart';
import 'package:konekto/widgets/textView.dart';

boardingView(gambar, title, desc) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(gambar, width: 300, height: 300),
      SizedBox(height: 20),
      textView(
        const EdgeInsets.only(left: 100, right: 100),
        title,
        TextAlign.center,
        const Color.fromARGB(255, 12, 53, 71),
        FontWeight.bold,
        24,
      ),
      SizedBox(height: 20),
      textView(
        const EdgeInsets.only(left: 50, right: 50),
        desc,
        TextAlign.center,
        const Color.fromARGB(255, 12, 53, 71),
        FontWeight.w500,
        16,
      ),
    ],
  );
}
