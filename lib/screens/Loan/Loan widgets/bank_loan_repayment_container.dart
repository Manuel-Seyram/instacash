import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanRepaymentDetailsContainer extends StatelessWidget {
  const LoanRepaymentDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 120,
      width: 320,
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.9, 5.0),
            child: Text(
              'Loan Repayment Details',
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
                  'Repayment Date',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 100.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '18 Nov 2022',
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
            height: 20.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: const Alignment(-0.5, 5.0),
                child: Text(
                  'Amount Due',
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
                  'Ghs 463.50',
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
