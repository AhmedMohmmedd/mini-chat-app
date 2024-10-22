import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleReguler10(context) {
    return const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,

        fontSize:16,
        // fontFamily: 'Montserrat'
        );
  }
  static TextStyle textStyle24 = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600, 
  );
  static TextStyle textStyle14 = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w300, 
  );
  }