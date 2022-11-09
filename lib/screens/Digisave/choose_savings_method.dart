import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Digisave/pay_check.dart';
import 'package:instacash/screens/Digisave/round_up.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class SavingsMethod extends StatelessWidget {
  const SavingsMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
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
              alignment: const AlignmentDirectional(-0.5, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'choose ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Savings Method',
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
              child: GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const RoundUp(),
                              withNavBar: true,
                            );
                },
                child: Container(
                    height: 120.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/roundup.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              'Round Up',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 160.0,
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
                          alignment: const AlignmentDirectional(-0.15, 5.0),
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
                    )),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const PayCheck(),
                              withNavBar: true,
                            );
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/PayCheck.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              'Pay Check',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 155.0,
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
                          alignment: const AlignmentDirectional(-0.39, 5.0),
                          child: Text(
                            'Instanly Available.',
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
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
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
                              'Lump Sum',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(width: 150.0),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
                        //const SizedBox(height: 5.0,),
                        Align(
                          alignment: const AlignmentDirectional(-0.39, 5.0),
                          child: Text(
                            'Instantly Available.',
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
