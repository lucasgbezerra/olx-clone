import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static final appBarTitle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final smallRobotoOpaque = GoogleFonts.roboto(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );

  static final btnFillText = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final whiteSmallText = GoogleFonts.roboto(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static final whiteMidBoldText = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final btnOutilinedText = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFF4e4e4f),
  );

  static final btnOutilinedTextPurple = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.purple,
  );
  static final purpleSmallText = GoogleFonts.roboto(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: AppColors.purple,
  );

  static final purpleLargeText = GoogleFonts.roboto(
    color: AppColors.purple,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );
  static final blackMidText = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black
  );
}
