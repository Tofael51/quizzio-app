import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzio/utils/constants.dart';


class LoginIntro extends StatelessWidget {
  const LoginIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Welcome Back',
            style: GoogleFonts.outfit(
              color: kmaindarkColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            children:  [
              TextSpan(
                text: '\nLorem ipsum dolor sit amet consectetur\n adipisicing elit Dolore harum.',
                style: GoogleFonts.outfit(
                  height: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3A4346),
                ),
              ),
            ],
          ),
        ),
    
      ],
    );
  }
}
