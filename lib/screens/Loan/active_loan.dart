import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ActiveLoan extends StatelessWidget {
  const ActiveLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {}, //put code to view invoice
            child: Container(
              height: 250.0,
              width: 370.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        Image.asset(
                          'assets/GetLoan.png',
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
                              'Repay Amount',
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
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Text(
                              'GHS 12,256.00',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(249, 40, 68, 194),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                        VerticalDivider(
                          thickness: 1.5,
                          color: const Color.fromARGB(249, 40, 68, 194)
                              .withOpacity(0.3),
                          width: 10.0,
                        ),
                        const SizedBox(
                          width: 10.0,
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
                            'Nov 18, 2022',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(249, 40, 68, 194),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 1.0, left: 20.0, right: 20.0),
                    child: StepProgressIndicator(
                      totalSteps: 3,
                      currentStep: 2,
                      padding: 0,
                      fallbackLength: 10.0,
                      roundedEdges: const Radius.circular(10),
                      size: 30.0,
                      selectedColor: Colors.red.shade500,
                      unselectedColor: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 1.5,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        onPressed: null,
                        height: 40.0,
                        minWidth: 150.0,
                        disabledColor: Colors.grey.shade100.withOpacity(1.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(
                          'Active',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.blue.shade900.withOpacity(0.3),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(249, 40, 68, 194),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Repay Loan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Tap on Card to view invoice',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              color: Color.fromRGBO(141, 152, 170, 1),
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            )),
          )
        ],
      ),
    );
  }
}
