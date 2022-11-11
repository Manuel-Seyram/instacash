// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class LoanAmount extends StatefulWidget {
  const LoanAmount({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoanAmountState createState() => _LoanAmountState();
}

class _LoanAmountState extends State<LoanAmount> {
  // ignore: unused_field
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 70.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20.0,
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
                const SizedBox(
                  width: 280.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.4, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Choose the ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'loan amount',
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
            //const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.75, 5.0),
              child: Text(
                'you want to request',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),

            const SizedBox(
              height: 60.0,
            ),
            SizedBox(
              //color: Colors.white,
              height: 400,
              width: 400,
              child:
            CupertinoPicker(
              backgroundColor: Colors.white,
              itemExtent: 30,
              scrollController: FixedExtentScrollController(
                initialItem: 5,
              ),
              magnification: 1.5,
              diameterRatio: 1.0,
              squeeze: 1.0,
              selectionOverlay: null,
              children: [
                
                Text('GHS 10', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ), ),
                    Text('GHS 50', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ), ),
                Text('GHS 100', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ), ),
                Text('GHS 150', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 200', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 250',style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 300', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 350', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 400', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 450', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 500', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 550', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 600', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 650', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 700',style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 750', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 800', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 850', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 900', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 950', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                Text('GHS 1000', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:  Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
              ],
              onSelectedItemChanged: (int value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            ),

            const SizedBox(height: 100.0,),
            const LoanAmountButton(),
          ],
        ),
      ),
    );
  }
}
