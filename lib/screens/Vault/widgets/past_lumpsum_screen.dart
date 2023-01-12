import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/lump_sum.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PastScreen extends StatelessWidget {
  const PastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50.0,
        ),
        IntrinsicHeight(
          child:
        Row(
          children: [
            const SizedBox(
              width: 40.0,
            ),
            Image.asset(
              'assets/lumpsum.png',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 15.0,),
            Column(
              children:[
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child:
                Text('Amount',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),),
                ),
                    const SizedBox(height: 10.0,),
                   Text('GHS 12,256.00',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),),
                  
              ]
            ),
            const SizedBox(width: 10.0,),

              VerticalDivider(
              thickness: 1.5,
              color:  const Color.fromARGB(249, 40, 68, 194).withOpacity(0.3),
              width: 45.0,
            ),
            const SizedBox(width: 20.0,),
            const Icon(PhosphorIcons.flag_banner_fill, color: Color.fromARGB(249, 40, 68, 194), size: 25.0,),
            const SizedBox(width: 15.0,),
            Column(
              children:[
                Text('Tenor',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),),
                    const SizedBox(height: 10.0,),
                   Text('1 year',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),),
                  
              ]
            ),
          ],
        ),
    ),
    const SizedBox(height: 10.0,),
    Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 32.0, right: 36.0, bottom: 10.0),
                child:
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 3,
                padding: 0,
                fallbackLength: 10.0,
                roundedEdges: const Radius.circular(20),
                 size: 10.0,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )
              ),
              Row(
                children:[
                const SizedBox(width: 40.0,),
                SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child:
                Image.asset('assets/bulb.png', ),
                ),
                const SizedBox(width: 15.0,),
                Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,),
                      child:
                Text(' Tenor completed. You can withdraw\n your earnings or re-invest',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),),
                    ),
                  ],
                ),
                ],
              ),
              const SizedBox(height: 160.0,),
              Row(
                children:[
                  const SizedBox(width: 40.0,),
              MaterialButton(
                 onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context, 
                    screen: const LumpSum(),
                    withNavBar: true,);
                 },
                 color: const Color.fromARGB(249, 40, 68, 194),
                  textColor: Colors.white,
                  minWidth: 5,
                  padding: const EdgeInsets.all(2.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                  Icons.add_rounded,
                  size: 25,
                    ),
                      ),
              const SizedBox(width: 5.0,),
              Text('Withdraw',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        ),   
                  ),
              )
                ]
              ),
              const SizedBox(height: 20.0,),
              Row(
                children:[
                  const SizedBox(width: 40.0,),
              MaterialButton(
                 onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context, 
                    screen: const LumpSum(),
                    withNavBar: true,);
                 },
                 color: const Color.fromARGB(249, 40, 68, 194),
                  textColor: Colors.white,
                  minWidth: 5,
                  padding: const EdgeInsets.all(2.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                  Icons.add_rounded,
                  size: 25,
                    ),
                      ),
              const SizedBox(width: 5.0,),
              Text('Reinvest',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        ),   
                  ),
              )
                ]
              )
      ],
    );
  }
}
