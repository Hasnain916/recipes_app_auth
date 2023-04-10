import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  AuthButton({Key? key,
    required this.title,
    required this.onTap,

    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.46,
        width: 368.27,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.49)
        ),
        child: Center(child: Text(title, style: GoogleFonts.cabin(
          color:(primaryColor),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),),
        ),
      ),
    );
  }
}