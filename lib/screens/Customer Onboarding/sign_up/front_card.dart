import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Frontcard extends StatelessWidget {
  const Frontcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        children: [
          const SizedBox(
            height: 60.0,
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
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 80.0,
              ),
              Align(
                alignment: const AlignmentDirectional(-0.5, 5.0),
                child: Text(
                  'National Identity Card',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Container(
            height: 222,
            width: 353,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.white, width: 2.5)),
          ),
          const SizedBox(
            height: 130.0,
          ),
          Align(
            child: Text(
              'Front Card',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              'Make sure the Front Card is centerd',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              'within the frame so all the details are clearly',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              'visible',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 70.0,
          ),
          Center(
              child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/verifyfront');
            },
            child: ClipOval(
              child: Container(
                //color: Colors.green,
                height: 60.0, // height of the button
                width: 60.0, // width of the button
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.white,
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
          )),
        ],
      ),
    );
  }
}
