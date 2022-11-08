import 'package:flutter/material.dart';
import 'package:instacash/widgets/instacash_buttons.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages

class Forgotpassword2 extends StatefulWidget {
  const Forgotpassword2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Forgotpassword2State createState() => _Forgotpassword2State();
}

class _Forgotpassword2State extends State<Forgotpassword2> {
  final _codeController = TextEditingController();
  // ignore: unused_field
  bool _codeFilled = false;
  bool pinFieldEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child:
      Column(
      children: [
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
        
        Align(
          alignment: const AlignmentDirectional(-0.5, 5.0),
          child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Verify your ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'number',
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
          alignment: const AlignmentDirectional(-0.3, 5.0),
          child: Text(
            'please enter the OTP code sent to \n+233********84',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Align(
            alignment: const AlignmentDirectional(-0.3, 5.0),
            child: Text(
              'Enter Verification Code (6 -digits)',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color.fromARGB(249, 40, 68, 194),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            )),
        const SizedBox(
          height: 10.0,
        ),
                      Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child:
                  PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 6,
                      animationType: AnimationType.scale,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      pinTheme: PinTheme(
                          selectedColor: const Color.fromARGB(249, 40, 68, 194),
                          activeColor: const Color.fromARGB(249, 40, 68, 194)
                              .withOpacity(0.2),
                          inactiveColor: Colors.grey),
                      controller: _codeController,
                      onChanged: (code) {
                        if (code.length > 5) {
                          setState(() {
                            _codeFilled = true;
                          });
                        } else {
                          setState(() {
                            _codeFilled = false;
                          });
                        }
                      }),
                  ),

                     Align(
                      alignment: const AlignmentDirectional(-0.6, 5.0),
                      child: Text(
                        'Resend code in 4:59', 
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
                      ),
                     ),
              
              const SizedBox(
                height: 350,
              ),

              const ConfirmButton2()
            ],
          ),
      ],
    ),
    ),
    );
  }
}
