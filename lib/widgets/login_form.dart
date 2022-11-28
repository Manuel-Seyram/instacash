import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';


class LoginFormfield extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  LoginFormfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Form(
          key: _formKey,
          child: Column(
            children: [

              _textformfieldname(),
              const SizedBox(
                height: 30.0,
              ),

              _textformfieldpassword(),
            ],
          )),
    );
  }

  Widget _textformfieldname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Phone Number / Email',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
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
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
            //border: OutlineInputBorder(borderSide: BorderSide())
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
      ),
    );
  }
}
