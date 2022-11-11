import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_basic_information_form.dart';
// ignore: depend_on_referenced_packages

class BasicInformation extends StatefulWidget {
  const BasicInformation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        SingleChildScrollView(
          child: Column(
            children: [
        const SizedBox(
          height: 70.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Align(
          alignment: const AlignmentDirectional(-0.5, 5.0),
          child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Basic ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'information',
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
        const SizedBox(height: 10.0),
        Align(
          alignment: const AlignmentDirectional(-0.5, 5.0),
          child: Text(
            'Please set up your profile',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),

      const SizedBox(height: 50.0,),

       BasicFormfield(),
            ],
        ),
        )

    );
  }
}
