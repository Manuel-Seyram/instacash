import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});


  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              Image.asset(
            'assets/shop.png',
          ),

          const SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              'Smart savings to automatically save\n GHS 50 to GHS 200 every week',
              style: GoogleFonts.poppins(textStyle: const TextStyle(color:   Colors.grey, fontSize: 16.0)),
              textAlign: TextAlign.center,
            ),
          ),
         const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}