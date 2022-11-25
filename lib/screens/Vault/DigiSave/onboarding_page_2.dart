import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});


  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color.fromRGBO(55,	136,	226, 0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 120,),
              Image.asset(
            'assets/walletgirl.png',
          ),

          const SizedBox(
            height: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Smart savings to automatically save\n GHS 50 to GHS 200 every week.',
              style: GoogleFonts.poppins(textStyle: const TextStyle(color:   Colors.white, fontSize: 16.0)),
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