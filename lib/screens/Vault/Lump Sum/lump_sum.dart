import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class LumpSum extends StatelessWidget {
  const LumpSum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body:  Column(
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
              height: 40.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.75, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Vault ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'terms',
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
            const SizedBox(
              height: 90.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.4,
                  )),
                    child: 
                    SingleChildScrollView(
                      child:
                    Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/lumpsum.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              'Vault',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 90.0,
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.25, 5.0),
                          child: Text(
                            'We will round up change on \nspendings and add it to your \nsavings wallet ',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    ),),),
            ),
            const SizedBox(
              height: 50.0,
            ),
            
            const SizedBox(
              height: 50.0,
            ),
            const LumpSumAgreeButton(),
          ],
        ),
    );
  }
}