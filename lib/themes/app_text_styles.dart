import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final appBarTitle = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final smallRobotoOpaque = GoogleFonts.roboto(
    fontSize: 11,
    fontWeight: FontWeight.w300,
    color: Colors.grey,
  );

  static final btnFillText = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
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
    color: Color(0xFF8304da),
  );
  static final purpleSmallText = GoogleFonts.roboto(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: Color(0xFF8304da),
  );

  static final purpleLargeText = GoogleFonts.roboto(
    color: AppColors.purple,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );
}
