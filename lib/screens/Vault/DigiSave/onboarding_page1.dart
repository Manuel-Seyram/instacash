import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});


  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color.fromRGBO(	0,	189,	143, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 150,),
              Image.asset(
            'assets/guyshop.png',
          ),

          const SizedBox(
            height: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'After each transaction you make, we\n automatically round up to the nearest whole\n number and add the difference to your\n DigiSave wallet',
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