import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/select_lump_sum.dart';
import 'package:instacash/screens/Vault/vault.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LumpHome extends StatefulWidget {
  const LumpHome({super.key});

  @override
  State<LumpHome> createState() => _LumpHomeState();
}

class _LumpHomeState extends State<LumpHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 40, 68, 194),
      body: SingleChildScrollView(
        child:
      Column(
        children: [
      Container(
      height: 250.0,
      color: const Color.fromARGB(249, 40, 68, 194),
      child:
             Column(
              children : [
            const SizedBox(
              height: 90.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Vault ',
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
            Align(
              alignment: const AlignmentDirectional(-0.38, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Please select your investment or savings type\nfrom the options below to proceed',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
              ),
            ),
          ],
            ),
      ),
   const SizedBox(
    height: 20.0,
   ),
      Container(
        height: 600,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0)
          )
        ),
        child: 
        Column(
          children: [
            const SizedBox(height: 25.0,),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text('Investments',
              style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
              ),
            ),
            const SizedBox(height: 30.0,),    
            SizedBox(
              height: 200.0,
              child:
            ListView( 
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 45.0,),
                    GestureDetector(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context, screen: const SelectLumpSum(), 
                          withNavBar: true);
                      },
                      child:
            Container(
              width: 150.0,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children:[
               const SizedBox(height: 15.0,),
                Image.asset('assets/lumpsum.png', height: 60.0, width: 60.0, color: Colors.white,),
                const SizedBox(height: 12.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.5, 5.0),
                  child: Text('Lumpsum\nInvestment',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.35, 5.0),
                  child: Text('GHS 12,256.00',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height:5.0,),
                Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0, bottom: 12.0),
                child:
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                padding: 0,
                fallbackLength: 10.0,
                roundedEdges: const Radius.circular(10),
                 size: 6,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )
              ),
                ]
              ),
            ),
                    ),
            const SizedBox(width: 20.0,),
            Container(
              width: 150.0,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children:[
               const SizedBox(height: 15.0,),
                Image.asset('assets/PayCheck.png', height: 60.0, width: 60.0, color: Colors.white,),
                const SizedBox(height: 12.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.65, 5.0),
                  child: Text('Monthly\nSavings',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.35, 5.0),
                  child: Text('GHS 12,256.00',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height:5.0,),
                Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0, bottom: 12.0),
                child:
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                padding: 0,
                fallbackLength: 10.0,
                roundedEdges: const Radius.circular(10),
                 size: 6,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )
              ),
                ]
              ),
            ),
            const SizedBox(width: 20.0,),
            GestureDetector(
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const SavingsMethod(),
                              withNavBar: true,
                            );
              },
              child:
            DottedBorder(
              color: Colors.blueAccent,
              borderType: BorderType.RRect,
              radius: const Radius.circular(10.0),
              strokeWidth: 1.5,
              dashPattern: const [9, 5],
              child: SizedBox(
                width: 150.0,
                child: Column(
                  children: [
                    const SizedBox(height: 40.0,),
                    CircleAvatar(
                      radius: 32.0,
                      child:
                     CircleAvatar(
                      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
                    
                      radius: 30.0,
                      child:
                     const Icon(Icons.add, color: Colors.blueAccent, size: 30.0,),
                    ),
                    ),
                    const SizedBox(height: 20.0,),
                    Align(
                      alignment: const AlignmentDirectional(-0.1, 5.0),
                      child: Text('Add new\nfunds to vault',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
                  ),
            ),
                  const SizedBox(width: 20.0,),
              ],
            ),
              ],
            ),
            ),
            const SizedBox(height: 30.0,),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text('Savings',
              style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
              ),
            ),
            const SizedBox(height: 30.0,),
            Container(
              height: 70.0,
              width: 310.0,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              child: 
              Row(
                children: [
                  const SizedBox(width: 20.0,),
                  Image.asset('assets/roundup.png', height: 40.0, width: 40.0, color: const Color.fromARGB(249, 40, 68, 194),),
                  const SizedBox(width: 20.0,),
                  Column(
                    children: [
                      const SizedBox(height: 15.0,),
                      Align(
                        alignment: const AlignmentDirectional(-0.7, 5.0),
                        child: Text('GHS 0.57 out of GHS 5.00',
                        style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                        ),
                      ),
                      const SizedBox(height: 5.0,),
              StepProgressIndicator(
                totalSteps: 30000,
                currentStep: 20000,
                padding: 0,
                fallbackLength: 170.0,
                roundedEdges: const Radius.circular(10),
                 size: 6,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )  
                    ],
                  ),
                ],

              )
            )
          ],
        )
      ),
        ],
      ),
    ),
    );
  }
}
