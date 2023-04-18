import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Customer%20Onboarding/login/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 70.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: SizedBox(
                  height: 50.0,
                  width: 100.0,
                  child: Image.asset('assets/logo2.png')),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.6, 5.0),
              child: Text(
                'Welcome Back',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Align(
              alignment: const AlignmentDirectional(-0.7, 10.0),
              child: Text(
                'Login          ',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LoginFormfield(),
            const SizedBox(
              height: 69.0,
            ),
            Align(
                alignment: const AlignmentDirectional(-0.1, 5.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Dont have an account? ',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(78, 81, 86, 100),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(249, 40, 68, 194),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/phonefield');
                            },
                        )
                      ]),
                )),
          ],
        ),
      ),
    );
  }
}
