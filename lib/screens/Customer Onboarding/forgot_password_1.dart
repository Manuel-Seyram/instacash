// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class Forgotpassword1 extends StatelessWidget {
  const Forgotpassword1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
      child:
      Column(
        children:  [
                     const SizedBox(
          height: 70.0,
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
                      alignment: const AlignmentDirectional(-0.1, 5.0),
                      child:
                    Text(
                      'Please enter your phone number or\nemail address',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black54, fontSize: 16.0, fontWeight: FontWeight.w400),),
                    ),
                ),

                const SizedBox(height: 60,),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child:
                _textformfieldname(),
                ),


                const SizedBox(height: 400.0,),

               const Forgotpassword1Button(),

        ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                           
      ),
    ),
    );
  }
   Widget _textformfieldname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Phone Number/Email',
            labelStyle: TextStyle(color: Colors.black54),
            //border: OutlineInputBorder(borderSide: BorderSide())
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
      ),
    );
  }
}
