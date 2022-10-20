// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';
import 'package:instacash/widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child:
      Column(
        children:  [
                
                const SizedBox(height: 40.0,),

                 Align(
                  alignment: const AlignmentDirectional(-0.7, 5.0),
                  child: SizedBox(
                    height: 50.0,
                    width: 100.0,
                    child:  Image.asset('assets/logo2.png')
                  ),

                ), 
                     const SizedBox(height: 30 ,),

                             Align(
                      alignment: const AlignmentDirectional(-0.6, 5.0),
                      child:
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.w500),),
                    ),
                ),
                     const SizedBox(height: 30.0),
                             Align(
                      alignment: const AlignmentDirectional(-0.7, 10.0),
                      child:
                    Text(
                      'Login          ',
                      style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500),),
                    ),
                ),

                const SizedBox(height: 10,),
  
                  LoginFormfield(),
                           Align(
                  alignment: const AlignmentDirectional(0.7, 5.0),
                  child: TextButton(
                    onPressed: (){},
                  child:
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(textStyle: const TextStyle(color:Color.fromARGB(249, 40, 68, 194), fontSize: 13.0, fontWeight: FontWeight.w500),)
                  ),),
                ),

                const SizedBox(height: 109.0,),

               LoginButton(),

               const SizedBox(height: 69.0,),

                                          Align(
                  alignment: const AlignmentDirectional(-0.1, 5.0),
                  child: TextButton(
                   onPressed: (() => {Navigator.pushNamed(context, '/phonefield')}),
                  child:
                  Text(
                    'Dont have an account? Sign Up',
                    style: GoogleFonts.poppins(textStyle: const TextStyle(color:Color.fromARGB(249, 40, 68, 194), fontSize: 13.0, fontWeight: FontWeight.w500),)
                  ),),
                ),

        ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                           
      ),
    ),
    );
  }
}
