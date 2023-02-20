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
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
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
            Container(
              color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
              height: 300,
              width: 400,
              child:
            CupertinoPicker(
              backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
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
            const SizedBox(height: 30.0,),

            //Enter Amount Container
            Container(
            height: 65.0,
            width: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: 
             Center(
              child: 
           Padding(padding: const EdgeInsets.only(left: 25.0),
            child:
            TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.black87,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                      
                  decoration: const InputDecoration.collapsed(
                    hintText: 'enter amount',
                  ),
                ),
           ),
          ),
          ),
          const SizedBox(height: 15.0,),
           Row(
            children:[
            const SizedBox(width: 32.0,),
            RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: 'Min: ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Ghs 10.00',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
              ]
            )),
            const SizedBox(width:100,),
            RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: 'Max: ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Ghs 1000.00',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          decoration: TextDecoration.underline,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
              ]
            )),
            ],
           ),
            const SizedBox(height: 80.0,),
            const LoanAmountButton(),
          ],
        ),
      ),
    );
  }
}
