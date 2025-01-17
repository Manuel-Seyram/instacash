import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardVault2 extends StatelessWidget {
  const CardVault2({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Stack(
          children: <Widget>[
            Container(
              //width: 500,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/cardbg2.png',
                height: 360,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
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
                      alignment: const Alignment(-0.8, 5.0),
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
                  height: 5.0,
                ),
                Align(
                  alignment: const Alignment(-0.64, 5.0),
                  child: Text(
                    'GHS 0.00',
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
                    const SizedBox(width: 350,),
                    Image.asset('assets/padlock.png', height: 30.0, width: 30.0,)
                  ],
                )
              ],
            ),
          ],
    );
  }
}
