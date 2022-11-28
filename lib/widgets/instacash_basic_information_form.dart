import 'package:flutter/material.dart';
import 'package:instacash/widgets/instacash_buttons.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class BasicFormfield extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  BasicFormfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              _textformfieldfname(),
              const SizedBox(
                height: 25.0,
              ),
              _textformfieldlname(),
              const SizedBox(
                height: 25.0,
              ),
              _textformfieldemail(),
              const SizedBox(
                height: 25.0,
              ),
              _textformfieldpassword(),
              const SizedBox(
                height: 25.0,
              ),
              _textformfieldcpassword(),
              const SizedBox(
                height: 170.0,
              ),
              const ContinueButton(),
            ],
          )),
    );
  }

  Widget _textformfieldfname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'First Name',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
      ),
    );
  }

  Widget _textformfieldlname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Last Name',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
      ),
    );
  }

  Widget _textformfieldemail() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            ) 
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
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
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
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        decoration: const InputDecoration(
            labelText: 'Confirm Password',
            labelStyle: TextStyle(color: Colors.black54, fontSize: 16.0),
            suffixIcon: Icon(
              Icons.check_circle_rounded,
            )),
        obscureText: true,
      ),
    );
  }
}
