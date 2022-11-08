import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: const Alignment(-0.35, 5.0),
      child: SizedBox(
        width: size.width * 1.0,
        height: size.height * 0.22,
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/cardbg2.png',
                height: 350,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 50.0,
                    ),
                    Align(
                      alignment: const Alignment(-0.6, 5.0),
                      child: Text(
                        'Loan Balance',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 150.0,
                    ),
                    Image.asset(
                      'assets/slantedlogo.png',
                      height: 50.0,
                      width: 50.0,
                    )
                  ],
                ),
                
                Align(
                  alignment: const Alignment(-0.65, 5.0),
                  child: Text(
                    'Jane Smith',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                     children: [
                      const SizedBox(
                      width: 45.0,
                    ),
                    Align(
                      alignment: const Alignment(-0.7, 5.0),
                      child: Text(
                        'Amount',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(width: 130,),
                    const SizedBox(
                      width: 35.0,
                    ),
                    Align(
                      alignment: const Alignment(-0.7, 5.0),
                      child: Text(
                        'GHS 463',
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
                Align(
                  alignment: const Alignment(-0.4, 5.0),
                  child: Text(
                    'Due date for repayment is : 22 Dec, 2022',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
