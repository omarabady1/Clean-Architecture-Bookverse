import 'package:flutter/material.dart';
import 'assets.dart';

abstract class Styles {
  static const title18 = TextStyle(
    fontFamily: AssetsData.montserrat,
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const title12 = TextStyle(
    fontFamily: AssetsData.montserrat,
    color: Colors.white,
    fontSize: 12,
  );
  static const sectra20 = TextStyle(
    fontFamily: AssetsData.gtSectra,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  static const  sectra16 = TextStyle(
    fontFamily: AssetsData.gtSectra,
    fontSize: 16,
    fontWeight: FontWeight.w600
  );
}
