
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/select_bank.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/select_momo.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DeliveryMethodVault extends StatelessWidget {
  const DeliveryMethodVault({super.key});

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
              alignment: const AlignmentDirectional(-0.55, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Choose ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'deposit method',
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

            const SizedBox(height: 55.0,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const SelectBankVault(),
                              withNavBar: true,
                            );
                },
                child: Container(
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                     border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  )),
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0,),
                        Row(
                          children: [
                        const SizedBox(width: 15.0),
                        Image.asset(
                          'assets/Bank.png',
                          height: 40.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Via bank',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          width: 180.0,
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
                          alignment: const AlignmentDirectional(-0.47, 5.0),
                          child: Text(
                            'Save with bank.',
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
            const SizedBox(height: 60.0,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const SelectMomoVault(),
                              withNavBar: true,
                            );
                },
                child: Container(
                    height: 94.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  )),
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0,),
                        Row(
                          children: [
                        const SizedBox(width: 15.0),
                        Image.asset(
                          'assets/momo.png',
                          height: 40.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Via momo',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          width: 170.0,
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
                          alignment: const AlignmentDirectional(-0.38, 5.0),
                          child: Text(
                            'Save with mobile money \nwallet',
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
          ],
        ),
      ),
    );
  }
}
