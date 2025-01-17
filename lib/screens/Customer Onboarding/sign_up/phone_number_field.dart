// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_phonenumber_form.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
      child:
      Column(
        children:  [
                     const SizedBox(height: 120 ,),

                             Align(
                      alignment: const AlignmentDirectional(-0.48, 5.0),
                      child:
                    RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Lets get ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'started',
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
                      alignment: const AlignmentDirectional(0.00, 5.0),
                      child:
                    Text(
                      'Enter your phone number. Well send \nyou a confirmation code.',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black54, fontSize: 16.0, fontWeight: FontWeight.w400),),
                    ),
                ),

                const SizedBox(height: 60,),
  
                Phonebox(),

                const SizedBox(height: 20.0),
                Align(
                  alignment: const AlignmentDirectional(-0.5, 5.0),
                  child: TextButton(
                  onPressed: (() => {Navigator.pushNamed(context, '/login')}),
                  child:
                  Text(
                    'Already have an account? Log In',
                    style: GoogleFonts.poppins(textStyle: const TextStyle(color:Color.fromARGB(249, 40, 68, 194), fontSize: 13.0, fontWeight: FontWeight.w500),)
                  ),),
                ),

                const SizedBox(height: 290.0,),

               const RegisterButton(),

        ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                           
      ),
    ),
    );
  }
}
