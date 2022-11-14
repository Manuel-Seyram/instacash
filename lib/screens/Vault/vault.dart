import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/lump_sum.dart';
import 'package:instacash/screens/Vault/pay_check.dart';
import 'package:instacash/screens/Vault/round_up.dart';
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
              height: 70.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20.0,
                ),
                
                SizedBox(
                  width: 280.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
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
                              screen: const LumpSum(),
                              withNavBar: true,
                            );
                },
                child: Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2.0,
                  )),
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
                                    color: Color.fromARGB(249, 40, 68, 194),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(width: 160.0),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
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
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2.0,
                  )),
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
                              'Monthly',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(249, 40, 68, 194),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 175.0,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
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
                              screen: const RoundUp(),
                              withNavBar: true,
                            );
                },
                child: Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2.0,
                  )),
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
                              'Round Up/DigiSave ',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(249, 40, 68, 194),
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
