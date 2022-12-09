import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:math' as math;

class CreditScore extends StatelessWidget {
  const CreditScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: Column(
        children: [
          const SizedBox(
          height: 70.0,
        ),
         Row(
           children: [
            const SizedBox(width: 30.0,),
             GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Color.fromARGB(249, 40, 68, 194),
                ),
              ),
              const SizedBox(width: 100.0,),
              Text('Credit Score',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:Colors.black87,
                        fontSize:20.0,
                        fontWeight: FontWeight.w500),
                  )),
           ],
         ),
        const SizedBox(height: 70.0,),
        Align(
          alignment: const AlignmentDirectional(-0.6, 5.0),
          child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: ' Your ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'credit score ',
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
        const SizedBox(height: 40.0,),
          CircleAvatar(
            radius: 120.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 95.0,
              backgroundColor: Colors.blue[900],
              child: CircleAvatar(
                radius: 90.0,
                child: CircularStepProgressIndicator(
                      totalSteps: 20,
                      currentStep: 20,
                      stepSize: 20,
                      selectedColor: Colors.blue,
                      unselectedColor: Colors.green[400],
                      padding: math.pi / 80,
                      width: 150,
                      height: 150,
                      startingAngle: math.pi * 2 / 3,
                      arcSize: math.pi * 2 / 3 * 2,
                      gradientColor: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                      ),
                      child: Center(
                  child: Text(
                      '750',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color:Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w500),
                        ),
                  ),
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0,),
       Row(
              children: [
                const SizedBox(width: 120.0,),
                Text(
                  'Keep it up',
                  style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w500),
                      ),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: [
                const SizedBox(width: 60.0,),
                Text(
                  'Generated on 18th July',
                  style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500),
                      ),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: [
                const SizedBox(width: 45.0,),
                Text(
                  'Credit Score rating by InstaCash',
                  style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                ),
              ],
            ),
            const SizedBox(height: 30.0,),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 100.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10.0,),
                    Image.asset('assets/creditreport.png', height: 30.0, width: 30.0,),
                    const SizedBox(width: 20.0,),
                    Column(
                      children: [
                        const SizedBox(height: 20.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 110.0),
                          child: Text(
                            'Credit report',
                            style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                          ),
                        ),
                        const SizedBox(height: 5.0,),
                        Text(
                          'Review your credit report',
                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30.0,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20.0,),
                  ]),
              ),
            )
        ],
      ),
    );
  }
}
