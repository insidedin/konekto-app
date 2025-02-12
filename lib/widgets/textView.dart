import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

textView(margin, text, posisi, fontColor, fontWeight, fontSize) {
  return Container(
    margin: margin,
    child: Text(
      text,
      textAlign: posisi,
      style: GoogleFonts.inter(
        color: fontColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    ),
  );
}