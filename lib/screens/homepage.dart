import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/loan_application_form.dart';
import 'package:instacash/screens/Repayment%20Loan/repayment_loan.dart';
import 'package:instacash/widgets/homepage_card_slider.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
                height: 250.0,
                color: const Color.fromARGB(249, 40, 68, 194),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        const CircleAvatar(
                          radius: 20.0,
                          //backgroundImage: Image(image: ''),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Welcome back!',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        const Icon(
                          PhosphorIcons.bell,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.85, 5.0),
                      child: Text(
                        'Jane Smith',
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
            Expanded(
                child: Container(
              color: const Color.fromRGBO(245, 246, 250, 100),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100.0,
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.87, 5.0),
                      child: Text(
                        'Quick Links',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const LoanApplication(),
                              withNavBar: true,
                            );
                          },
                          child: Container(
                            height: 90.0,
                            width: 85.0,
                            color: Colors.white,
                            child: Column(children: [
                              const SizedBox(
                                height: 15.0,
                              ),
                              Image.asset(
                                'assets/GetLoan.png',
                                height: 35.0,
                                width: 35.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Get Loan',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(249, 40, 68, 194),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const Repayment(),
                              withNavBar: false,
                            );
                          },
                          child: Container(
                            height: 90.0,
                            width: 90.0,
                            color: Colors.white,
                            child: Column(children: [
                              const SizedBox(
                                height: 15.0,
                              ),
                              Image.asset(
                                'assets/RepayLoan.png',
                                height: 35.0,
                                width: 35.0,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Repay Loan',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(249, 40, 68, 194),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 90.0,
                          width: 85.0,
                          color: Colors.white,
                          child: Column(children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            Image.asset(
                              'assets/Transfers.png',
                              height: 35.0,
                              width: 35.0,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Transfers',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(249, 40, 68, 194),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 90.0,
                          width: 85.0,
                          color: Colors.white,
                          child: Column(children: [
                            const SizedBox(
                              height: 15.0,
                            ),
                            Image.asset(
                              'assets/more.png',
                              height: 35.0,
                              width: 35.0,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'More',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(249, 40, 68, 194),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.85, 5.0),
                      child: Text(
                        'Transactions History',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 17.0,
                        ),
                        Text(
                          'Today, Oct 22',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 95.0,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.white,
                      height: 75.0,
                      width: 360.0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 17.0,
                          ),
                          Image.asset(
                            'assets/ArrowCircleUpRight.png',
                            height: 40.0,
                            width: 40.0,
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
                                'Loan Request',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '21/2/2022',
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
                            width: 110.0,
                          ),
                          Text(
                            '- 15.99',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.white,
                      height: 75.0,
                      width: 360.0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 17.0,
                          ),
                          Image.asset(
                            'assets/ArrowCircleDownLeft.png',
                            height: 40.0,
                            width: 40.0,
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
                                'Deposit - Stanbic',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black87,
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
                            width: 50.0,
                          ),
                          Text(
                            '+ 2,045.00',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.white,
                      height: 75.0,
                      width: 360.0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 17.0,
                          ),
                          Image.asset(
                            'assets/ArrowCircleUpRight.png',
                            height: 40.0,
                            width: 40.0,
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
                                'Transfer: John Doe',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '22/5/2022',
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
                            width: 60.0,
                          ),
                          Text(
                            '- 986.00',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
        const CardSlider(),
      ]),
    );
  }
}
