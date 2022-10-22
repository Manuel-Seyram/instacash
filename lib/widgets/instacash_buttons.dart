import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

//HERE YPU WILL FIND THE BUTTONS USED FOR INSTACASH APP

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/otp');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Register',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/basicinformation');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/bankinformation');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}


// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
    LoginButton({super.key});
    
  bool phoneFieldEmpty = true;

  bool isLoading = false;
  bool isButtondisabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      enableFeedback:  isButtondisabled ? phoneFieldEmpty : !phoneFieldEmpty,
        onPressed: () {
         
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'login',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

//FORGOT PASSSWORD BUTTONS
class Forgotpassword1Button extends StatelessWidget {
  const Forgotpassword1Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgotpassword2');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ConfirmButton2 extends StatelessWidget {
  const ConfirmButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgotpassword3');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ConfirmButton3 extends StatelessWidget {
  const ConfirmButton3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}



//bank account information button

class BankAccountInformationButton extends StatelessWidget {
  const BankAccountInformationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/idproof');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 300,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}