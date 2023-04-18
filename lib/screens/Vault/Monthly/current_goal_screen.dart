import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SelectMonthly extends StatefulWidget {
  const SelectMonthly({super.key});

  @override
  State<SelectMonthly> createState() => _SelectMonthlyState();
}

class _SelectMonthlyState extends State<SelectMonthly> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 40, 68, 194),
      body: Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30.0,
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, 5.0),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 280.0,
              ),
            ],
          ),
          Container(
            height: 200.0,
            color: const Color.fromARGB(249, 40, 68, 194),
            child: Column(
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.84, 5.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Goal',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.8, 5.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Education',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30.0,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '7 months left',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      width: 120.0,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color.fromARGB(255, 40, 68, 194),
                            border: Border.all(
                              width: 1.5,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 15.0,
                              ),
                              const Icon(
                                CupertinoIcons.arrow_down_to_line_alt,
                                size: 15,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Withdraw',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
           Container(
              height: height* 0.5876,
              decoration: BoxDecoration(
                  color:
                      const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50.0,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20.0,
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
                                'Balance',
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
                            color: const Color.fromARGB(249, 40, 68, 194)
                                .withOpacity(0.3),
                            width: 45.0,
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
                            Padding(
                              padding: const EdgeInsets.only(right: 65.0),
                              child: Text(
                                'Target',
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
                              'GHS 20,000.00',
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
                            top: 5.0, left: 20.0, right: 15.0),
                        child: StepProgressIndicator(
                          totalSteps: 3,
                          currentStep: 2,
                          padding: 0,
                          fallbackLength: 10.0,
                          roundedEdges: const Radius.circular(10),
                          size: 10.0,
                          selectedColor: const Color.fromARGB(249, 40, 68, 194),
                          unselectedColor: Colors.grey.shade300,
                        )),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
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
                                top: 35.0,
                              ),
                              child: Text(
                                ' Based on your timely monthly\n contribuitions, you are likely to reach your\n target goal on time. Keep it up!',
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
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
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
                                bottom: 3.0,
                              ),
                              child: Text(
                                ' Funding Progress',
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
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 35.0,
                        ),
                        Image.asset(
                          'assets/ArrowCircleDownLeft.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Contributed',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '11/7/2022',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          '+ GHS 2,045.00',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.green,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2.0,
                      color: Colors.black12,
                      height: 30,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 35.0,
                        ),
                        Image.asset(
                          'assets/ArrowCircleDownLeft.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Contributed',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '11/7/2022',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          '+ GHS 2,045.00',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.green,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2.0,
                      color: Colors.black12,
                      height: 30,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 35.0,
                        ),
                        Image.asset(
                          'assets/ArrowCircleDownLeft.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 30.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Contributed',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '11/7/2022',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        Text(
                          '+ GHS 2,045.00',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.green,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2.0,
                      color: Colors.black12,
                      height: 30,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
