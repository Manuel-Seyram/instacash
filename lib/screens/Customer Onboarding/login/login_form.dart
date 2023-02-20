import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:instacash/Extras/validations.dart';

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
              Align(
              alignment: const AlignmentDirectional(0.7, 5.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgotpassword1');
                },
                child: Text('Forgot Password?',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),

            const SizedBox(
              height: 109.0,
            ),

              MaterialButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            if (kDebugMode) {
              print('Validated');
            }
            Navigator.pushNamed(context, '/navbar');
          }
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'login',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ))
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
           // validator: validateEmailorPhonenumber,
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
       // validator: validatePassword,
      ),
    );
  }
}

//Validations
//Password

//String? validatePassword(String? passwordText) {
  //if (passwordText!.isEmpty) {
 //   return "* Required";
 // }  else if (!Validators.validPasswordLength(passwordText)) {
 //   return "Password should be greater than 8 characters";
 // } else if (!Validators.validUpperCase(passwordText) ||
    //  !Validators.validLowerCase(passwordText) ||
    //  !Validators.validNumber(passwordText) ||
    //  !Validators.validSpecialCharacters(passwordText)) {
   // return "Password must contain at least one uppercase,lowercase,number and special character";
 // }
  //return null;
//}

//Email or Phone Number

//String? validateEmailorPhonenumber(String? phoneNumber) {
 // if (phoneNumber!.isEmpty) {
   // return "* Required";
 // } else if (!Validators.validPhoneNumber(phoneNumber)) {
 //   return "Phone Number invalid";
 // }
 // return null;
//}


