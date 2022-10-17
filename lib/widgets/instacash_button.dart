import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
                    
                     const SizedBox(height: 94 ,),

                             Align(
                      alignment: const AlignmentDirectional(-0.8, 10.0),
                      child:
                    Text(
                      'Set a new password',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 16.0),),
                    ),
                ),
                     const SizedBox(height: 20.0),
                     Text('Lets get started!', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 16.0),),),



        ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                           
      ),
    );
  }
}
