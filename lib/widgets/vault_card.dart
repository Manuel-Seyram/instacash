import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardVault extends StatelessWidget {
  const CardVault({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/cardbg2.png',
            height: 360,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60.0,
                ),
                Align(
                  alignment: const Alignment(-0.9, 5.0),
                  child: Text(
                    'Vault',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 240.0,
                ),
                Image.asset(
                  'assets/slantedlogo.png',
                  height: 50.0,
                  width: 50.0,
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const Alignment(-0.6, 5.0),
              child: Text(
                'GHS 985.00',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
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
                  width: 350,
                ),
                Image.asset(
                  'assets/padlock.png',
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
