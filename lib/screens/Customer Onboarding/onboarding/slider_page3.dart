import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class SliderPage3 extends StatelessWidget {
  const SliderPage3({super.key});


  @override
  Widget build(BuildContext context) {
   // double width = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromRGBO(3, 22, 58, 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              Image.asset(
            'assets/logo.png',
            width: 150,
            height: 90,
            
          ),

          const  SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              'Applying for a loan \n made easy',
              style: GoogleFonts.poppins(textStyle: const TextStyle(color:   Colors.white, fontSize: 24.0)),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(
            height: 10,
          ),

           Image.asset(
            'assets/holding card.png',
            height: 300,
            width: 270,
          ),

          
         const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}