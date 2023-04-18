import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LumpSumDetailsContainer extends StatelessWidget {
  const LumpSumDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: const Alignment(-0.5, 5.0),
                child: Text(
                  'Total Amount:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 150.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  'GHS 500',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.blue,
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
                  'Tenure:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 205.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '1 year',
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
                  'Start Date:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 155.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '11/12/2022',
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
                  'End Date:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 160.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  '11/12/2023',
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
                  'Interest:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 210.0,
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

          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Align(
                alignment: const Alignment(-0.5, 5.0),
                child: Text(
                  'Returns:',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 180.0,
              ),
              Align(
                alignment: const Alignment(-0.7, 5.0),
                child: Text(
                  'Ghs 650',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.blue,
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
