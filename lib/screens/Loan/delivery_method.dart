// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryMethod extends StatelessWidget {
  const DeliveryMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child: Column(
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
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.6, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Select ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Transfer Method',
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
            //const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.55, 5.0),
              child: Text(
                'where do you want to receive the money',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),

            const SizedBox(height: 90.0,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/selectbank');
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0,),
                        Row(
                          children: [
                        const SizedBox(width: 10.0),
                        Image.asset(
                          'assets/Bank.png',
                          height: 40.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Via bank - Standard',
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
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                          color: Colors.black54,
                        )
                          ],
                        ),
                        //const SizedBox(height: 5.0,),
                        Align(
                          alignment: const AlignmentDirectional(-0.3, 5.0),
                          child: Text(
                            'Cash in 2 to 3 business days.',
                            style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400),
                          ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 50.0,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/selectmomo');
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0,),
                        Row(
                          children: [
                        const SizedBox(width: 10.0),
                        Image.asset(
                          'assets/momo.png',
                          height: 40.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Via momo - Instant',
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
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                          color: Colors.black54,
                        )
                          ],
                        ),
                        //const SizedBox(height: 5.0,),
                        Align(
                          alignment: const AlignmentDirectional(-0.49, 5.0),
                          child: Text(
                            'Instantly Available',
                            style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400),
                          ),
                          ),
                        )
                      ],
                    )),
              ),
            ),

            const SizedBox(height: 50.0,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/selectcard');
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0,),
                        Row(
                          children: [
                        const SizedBox(width: 10.0),
                        Image.asset(
                          'assets/Card.png',
                          height: 40.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Via card - Instant',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          width: 100.0,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                          color: Colors.black54,
                        )
                          ],
                        ),
                        //const SizedBox(height: 5.0,),
                        Align(
                          alignment: const AlignmentDirectional(-0.49, 5.0),
                          child: Text(
                            'Instantly Available',
                            style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400),
                          ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
