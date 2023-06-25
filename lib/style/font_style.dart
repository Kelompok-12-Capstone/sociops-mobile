// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_style.dart';

class FontFamily {
  TextStyle primary = GoogleFonts.inter(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      color: ColorStyle().primarydark);

  TextStyle secondary = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorStyle().primarydark);

  TextStyle mediumteks = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: ColorStyle().primarydark);

  TextStyle reguler = GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: ColorStyle().primarydark);
  TextStyle light = GoogleFonts.inter(
      fontWeight: FontWeight.w200,
      fontSize: 16,
      color: ColorStyle().primarydark);
}

class Styles {
  static const TextStyle organizerTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 22,
    color: Colors.black,
  );

  static const TextStyle searchTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 22,
    color: AppColors.textColor,
  );

  static const Color iconColor = AppColors.textColor;

  static const TextStyle resultTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: Colors.black,
  );

  static const TextStyle Result2 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: AppColors.resultCountColor,
  );

  static const TextStyle result3 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    color: Colors.black,
  );

  static const TextStyle result4 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    color: AppColors.Berita,
  );

  static const TextStyle result5 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.Berita2,
  );

  static const TextStyle result6 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: AppColors.Berita3,
  );

  static const TextStyle result7 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.arrowColor,
  );

  static const TextStyle result8 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontStyle: FontStyle.italic,
    color: AppColors.Berita4,
  );

  static const TextStyle result9 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.Berita,
  );

  static const TextStyle result10 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.Berita,
  );
  static const TextStyle closed = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 255, 255, 255),
  );

  static const TextStyle resultText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    color: Colors.black,
  );

  static const TextStyle resultTex = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle resultTe = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static const TextStyle Result = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFF444CE7),
  );
}
