import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Month1 extends StatelessWidget {
  const Month1({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Column(
          children:[
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child:
               Text('interest rate: 30%',
               style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400),
                ),),),
                const SizedBox(height: 10.0,),

                Align(
                  alignment: const AlignmentDirectional(-0.82, 5.0),
                  child:
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Estimated return: ',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    TextSpan(
                      text: ' ₵ 8250',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ]),
                ),),
          ]
    );
  }
}
