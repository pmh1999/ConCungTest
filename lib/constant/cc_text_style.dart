import 'package:flutter/material.dart';

class CCTextStyle {
  CCTextStyle._();

  static const TextStyle regular = TextStyle(
      fontFamily: 'IBM Plex Sans',
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400);
  static final TextStyle regularPurple =
      regular.copyWith(color: Color(0xff5D5FEF));

  static final TextStyle bold = regular.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle bold36 = bold.copyWith(fontSize: 36);
}
