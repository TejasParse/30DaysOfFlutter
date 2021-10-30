import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      foregroundColor: Colors.black,
    ),
  );
}