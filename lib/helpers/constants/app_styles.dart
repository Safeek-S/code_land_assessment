import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color buttonBackgroundColor = const Color(0xffF68326);
  static Color buttonTextColor = const Color(0xffFFFFFF);

  static TextStyle loginButtonTextStyle =
          GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 24,color:AppStyle.buttonTextColor),
      uploadButtonTextStyle = GoogleFonts.poppins(
        color: AppStyle.buttonTextColor,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      viewButtonStyle = GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: const Color(0xff000000),
      );
  static RoundedRectangleBorder buttonShape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));
  static BorderRadius textfieldBorderRadius = BorderRadius.circular(4);
}
