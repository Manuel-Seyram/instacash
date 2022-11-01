import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanDetailsContainer extends StatelessWidget {
  const LoanDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 250,
      width: 320,
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.9, 5.0),
            child: Text(
              'Loan Details',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color.fromARGB(249, 40, 68, 194),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
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
                  'Amount',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 170.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  'GHS 463',
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
          const Divider(
            color: Colors.grey,
            height: 2.0,
            thickness: 1.0,
            indent: 20.0,
            endIndent: 20.0,
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
                  'Fee',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 230.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '10%',
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
          const Divider(
            color: Colors.grey,
            height: 2.0,
            thickness: 1.0,
            indent: 20.0,
            endIndent: 20.0,
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
                  'Duration',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 170.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '30 days',
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
          const Divider(
            color: Colors.grey,
            height: 2.0,
            thickness: 1.0,
            indent: 20.0,
            endIndent: 20.0,
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
                  'Date Applied',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 110.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '18 Sept, 2022',
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
          const Divider(
            color: Colors.grey,
            height: 2.0,
            thickness: 1.0,
            indent: 20.0,
            endIndent: 20.0,
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
                  'Transaaction ID:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 60.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  'Insta00010144587',
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
