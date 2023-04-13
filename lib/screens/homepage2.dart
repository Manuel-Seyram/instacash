import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/loan_application_form.dart';
import 'package:instacash/screens/Repayment%20Loan/repayment_loan.dart';
import 'package:instacash/widgets/homepage_card2.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      width: width,
      child: Scaffold(
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
                            'Welcome!',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            width: 200,
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
                        alignment: const AlignmentDirectional(-0.83, 5.0),
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
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const LoanApplication(),
                                withNavBar: false,
                              );
                            },
                            child: Container(
                              height: 90.0,
                              width: 180.0,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10.0,
                                          spreadRadius: 5.0,
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],),
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
                            width: 10.0,
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
                              width: 180.0,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10.0,
                                          spreadRadius: 5.0,
                                          offset: Offset(0.0, 0.0),
                                        )
                                      ],
                              ),
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
                          
                          const SizedBox(
                            width: 5.0,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.8, 5.0),
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
                            width: 25.0,
                          ),
                          Text(
                            'No records',
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
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Image.asset('assets/emptyfield.png'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'After making a transaction, you will be able to\n view your history here',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    )
    
                    ],
                  ),
                ),
              )),
            ],
          ),
          const CardSlider2(),
        ]),
      ),
    );
  }
}
