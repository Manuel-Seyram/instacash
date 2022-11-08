import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Proof extends StatelessWidget {
  const Proof({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 94,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.6, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Proof of ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'identity',
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
            const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(0.0, 5.0),
              child: Text(
                'We need to verify your identity before \nyou can access your account',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'Country',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                  height: 60.0,
                  color: Colors.white,
                  child: Row(
                    children: [
                      const SizedBox(width: 10.0),
                      Image.asset(
                        'assets/ghanaflag.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Ghana',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black45,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        width: 80.0,
                      ),
                      MaterialButton(
                        onPressed: null,
                        disabledColor: const Color.fromARGB(249, 40, 68, 194)
                            .withOpacity(0.5),
                        // disabledColor: Colors.grey,
                        //color: const Color.fromARGB(249, 40, 68, 194),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(
                          'Change',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.6, 5.0),
              child: Text(
                'Select Document',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/verifyfront');
                },
                child: Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      children: [
                        const SizedBox(width: 10.0),
                        Image.asset(
                          'assets/id.png',
                          height: 40.0,
                          width: 40.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'National Identity Card',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 60.0,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                          color: Colors.black54,
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
