import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PastScreen extends StatelessWidget {
  const PastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  const SizedBox(
                    width: 40.0,
                  ),
                  Image.asset(
                    'assets/lumpsum.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        'Amount',
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
                    Text(
                      'GHS 12,256.00',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 10.0,
                  ),
                  VerticalDivider(
                    thickness: 1.5,
                    color:
                        const Color.fromARGB(249, 40, 68, 194).withOpacity(0.3),
                    width: 45.0,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Icon(
                    PhosphorIcons.flag_banner_fill,
                    color: Color.fromARGB(249, 40, 68, 194),
                    size: 25.0,
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Column(children: [
                    Text(
                      'Tenor',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '1 year',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, left: 32.0, right: 36.0, bottom: 10.0),
                child: StepProgressIndicator(
                  totalSteps: 3,
                  currentStep: 3,
                  padding: 0,
                  fallbackLength: 10.0,
                  roundedEdges: const Radius.circular(20),
                  size: 10.0,
                  selectedColor: const Color.fromARGB(249, 40, 68, 194),
                  unselectedColor: Colors.grey.shade300,
                )),
            Row(
              children: [
                const SizedBox(
                  width: 40.0,
                ),
                SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: Image.asset(
                    'assets/bulb.png',
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        ' Tenor completed. You can withdraw\n your earnings or re-invest',
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
            const SizedBox(
              height: 160.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 25.0),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                height: 50.0,
                //minWidth: 50,
                color: const Color.fromARGB(249, 40, 68, 194),
                child: Row(children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.0,
                    child: Icon(
                      Icons.download,
                      size: 20,
                      color: Color.fromARGB(249, 40, 68, 194),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    'Withdraw',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 25.0),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                height: 50.0,
                //minWidth: 50,
                color: const Color.fromARGB(249, 40, 68, 194),
                child: Row(children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.0,
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Color.fromARGB(249, 40, 68, 194),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    'Re-invest',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
