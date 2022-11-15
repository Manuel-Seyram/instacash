import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LumpSumDetailsMomoContainer2 extends StatelessWidget {
  const LumpSumDetailsMomoContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 350,
      decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                     border: Border.all(
                    color: Colors.grey.shade200,
                    width: 0.7,
                  )),
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.85, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Paid with',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(249, 40, 68, 194),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: const Alignment(-0.5, 5.0),
                child: Text(
                  'Mobile Network',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 130.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  'vodafone',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: const Alignment(-0.5, 5.0),
                child: Text(
                  'Mobile money number',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 75.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '0502261784',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: const Alignment(-0.5, 5.0),
                child: Text(
                  'Account Name',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 125.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  'Jane Smith',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
