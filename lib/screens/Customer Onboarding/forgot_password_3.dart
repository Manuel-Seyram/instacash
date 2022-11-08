// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class Forgotpassword3 extends StatelessWidget {
  const Forgotpassword3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
      child:
      Column(
        children:  [
                     const SizedBox(
          height: 30.0,
        ),
        Align(
          alignment: const AlignmentDirectional(-0.9, 5.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromARGB(249, 40, 68, 194),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),

                             Align(
                      alignment: const AlignmentDirectional(-0.5, 5.0),
                      child:
                    RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Forgot ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'password',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
                ),
                     const SizedBox(height: 20.0),
                             Align(
                      alignment: const AlignmentDirectional(0.0, 5.0),
                      child:
                    Text(
                      'Enter your new password to complete\nreset process',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black54, fontSize: 16.0, fontWeight: FontWeight.w400),),
                    ),
                ),

                const SizedBox(height: 60,),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child:
                _textformfieldpassword(),
                ),
                const SizedBox(height: 20.0,),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child:
                _textformfieldcpassword(),
                ),


                const SizedBox(height: 20.0),

                const SizedBox(height: 290.0,),

               const ConfirmButton3(),

        ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                           
      ),
    ),
    );
  }
    Widget _textformfieldpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'New Password',
            labelStyle: TextStyle(color: Colors.black54),
            //border: OutlineInputBorder(borderSide: BorderSide())
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
      ),
    );
  }

  Widget _textformfieldcpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Confirm Password',
            labelStyle: TextStyle(color: Colors.black54),
            //border: OutlineInputBorder(borderSide: BorderSide())
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
      ),
    );
  }
}

