import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/Extras/validations.dart';

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
              MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (kDebugMode) {
                        print('Validated');
                      }
                      Navigator.pushNamed(context, '/bankinformation');
                    }
                  },
                  color: const Color.fromARGB(249, 40, 68, 194),
                  height: 40.0,
                  minWidth: 300,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ],
          )),
    );
  }

  Widget _textformfieldfname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.name,
        validator: validateFirstname,
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
        validator: validateLastname,
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
        validator: validateEmail,
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
            )),
      ),
    );
  }

  Widget _textformfieldpassword() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.text,
        validator: validatePassword,
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
        validator: validateConfirmpassword,
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

//Validations
//Password

String? validatePassword(String? passwordText) {
  if (passwordText!.isEmpty) {
    return "* Required";
  } else if (!Validators.validPasswordLength(passwordText)) {
    return "Password should be greater than 8 characters";
  } else if (!Validators.validUpperCase(passwordText) ||
      !Validators.validLowerCase(passwordText) ||
      !Validators.validNumber(passwordText) ||
      !Validators.validSpecialCharacters(passwordText)) {
    return "Password must contain at least one uppercase,lowercase,number and special character";
  }
  return null;
}

//confirm password
String? validateConfirmpassword(passwordText) {
  if (passwordText!.isEmpty) {
    return "* Required";
  }
  return null;
}

//Email or Phone Number

String? validateEmailorPhonenumber(String? phoneNumber) {
  if (phoneNumber!.isEmpty) {
    return "* Required";
  } else if (!Validators.validPhoneNumber(phoneNumber)) {
    return "Phone Number invalid";
  }
  return null;
}

//Firstname
String? validateFirstname(String? nameText) {
  if (nameText!.isEmpty) {
    return "*Required";
  }
  return null;
}

//Lastname
String? validateLastname(String? nameText) {
  if (nameText!.isEmpty) {
    return "*Required";
  }
  return null;
}

//email
String? validateEmail(emailText) {
  if (emailText!.isEmpty) {
    return "*Required";
  } else if (!Validators.validEmail(emailText)) {
    return "Invalid email";
  }
  return null;
}
