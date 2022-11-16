import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Selfie extends StatelessWidget {
  const Selfie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(249, 40, 68, 194),
            height: 300,
            child: Column(
              children: [
                const SizedBox(height: 40.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.9, 5.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Take a selfie',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 2.0,),

                Align(
                  alignment: const AlignmentDirectional(0.0, 5.0),
                  child: Image.asset('assets/selfie.png', height: 190, width: 210,)
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0,),
          Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Before you take a photo',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Container(
                  height: 180,
                  width: 700,
                  color: Colors.white60,
                  child: Column(children: [
                    const SizedBox(height: 10.0,),
                    Row(
                      children: [
                        const SizedBox(width: 40.0,),
                        ClipOval(
              child: Container(
                //color: Colors.green,
                height: 10.0, // height of the button
                width: 10.0, // width of the button
                decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    border: Border.all(
                        color: Colors.green.shade700,
                        width: 10.0,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(21.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 40.0)
                    ],
                    shape: BoxShape.circle),
              ),
            ),
            const SizedBox(width: 10.0,),
                    Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Please take off glasses, scarfs, hats etc.',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                      ]
                    ),
                    const SizedBox(height: 30.0,),
                     Row(
                      children: [
                        const SizedBox(width: 45.0,),
                        ClipOval(
              child: Container(
                //color: Colors.green,
                height: 5.0, // height of the button
                width: 5.0, // width of the button
                decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border.all(
                        color: Colors.black54,
                        width: 10.0,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(21.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 40.0)
                    ],
                    shape: BoxShape.circle),
              ),
            ),
            const SizedBox(width: 10.0,),
                    Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Hold the ID card close to your face.',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                      ]
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      children: [
                        const SizedBox(width: 45.0,),
                        ClipOval(
              child: Container(
                //color: Colors.green,
                height: 5.0, // height of the button
                width: 5.0, // width of the button
                decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border.all(
                        color: Colors.black54,
                        width: 10.0,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(21.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 40.0)
                    ],
                    shape: BoxShape.circle),
              ),
            ),
            const SizedBox(width: 10.0,),
                    Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Make sure your face and ID are visible.',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                      ]
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      children: [
                        const SizedBox(width: 45.0,),
                        ClipOval(
              child: Container(
                //color: Colors.green,
                height: 5.0, // height of the button
                width: 5.0, // width of the button
                decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border.all(
                        color: Colors.black54,
                        width: 10.0,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(21.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 40.0)
                    ],
                    shape: BoxShape.circle),
              ),
            ),
            const SizedBox(width: 10.0,),
                    Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Make sure there is good lighting.',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                      ]
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      children: [
                        const SizedBox(width: 45.0,),
                        ClipOval(
              child: Container(
                //color: Colors.green,
                height: 5.0, // height of the button
                width: 5.0, // width of the button
                decoration: BoxDecoration(
                    color: Colors.black54,
                    border: Border.all(
                        color: Colors.black54,
                        width: 10.0,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(21.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 40.0)
                    ],
                    shape: BoxShape.circle),
              ),
            ),
            const SizedBox(width: 10.0,),
                    Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: Text(
                    'Take and submit your photo.',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                      ]
                    ),

                  ]),
                ),
               const SizedBox(height: 64.0,),

              Align(
                  alignment: const AlignmentDirectional(-0.4, 5.0),
                  child: Text(
                    'To verify your identity, we will compare your\npicture with the ID you submitted',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),

                const SizedBox(height: 80.0,),
                MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/selfieverify');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 50.0,
        minWidth: 350,
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
        )),


        ],
      ),
    );
  }
}
