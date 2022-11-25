import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});


  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color.fromRGBO(9,	133,	255, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 160,),
              Image.asset(
            'assets/market.png',
          ),

          const SizedBox(
            height: 140.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Saving money has never been easier.\n After a purchase of GHS 15.50, GHS 0.50 is\n automatically transfered to your DigiSave wallet.',
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