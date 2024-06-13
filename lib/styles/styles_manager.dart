import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ultimate_solutions/colors/colors.dart';

class AppTextStyle {
  // Montserrat Light Fonts
  static TextStyle montserratLight = const TextStyle(
      fontWeight: FontWeight.w300,
      color: ThemeColors.black,
      fontSize: 16,
      fontFamily: 'Montserrat');
  // Montserrat Regular Fonts
  static TextStyle montserraRegular = const TextStyle(
      fontWeight: FontWeight.w400,
      color: ThemeColors.black,
      fontSize: 16,
      fontFamily: 'Montserrat');
  // Montserrat SemiBold Fonts
  static TextStyle montserraSemiBold = const TextStyle(
      fontWeight: FontWeight.w600,
      color: ThemeColors.black,
      fontSize: 16,
      fontFamily: 'Montserrat');
  // Montserrat Bold Fonts
  static TextStyle montserraBold = const TextStyle(
      fontWeight: FontWeight.w700,
      color: ThemeColors.black,
      fontSize: 16,
      fontFamily: 'Montserrat');
  // Montserrat Black Fonts
  static TextStyle montserraBlack = const TextStyle(
      fontWeight: FontWeight.w900,
      color: ThemeColors.black,
      fontSize: 16,
      fontFamily: 'Montserrat');

  static TextStyle montserragray =  TextStyle(
  fontWeight: FontWeight.w400,
  color: HexColor("#616161"),
  fontSize: 14,
  fontFamily: 'Montserrat');
}
