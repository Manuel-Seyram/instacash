import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMode extends StatelessWidget {
  const PaymentMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
        body: SingleChildScrollView(
            child: Column(
              children:[
                const SizedBox(
              height: 70.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Color.fromARGB(249, 40, 68, 194),
                  ),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                Text('Payment Info',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            const SizedBox(height: 40.0,),

            Row(
              children:[
                const SizedBox(width: 30.0,),
                Text('Payment Modes', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),),
                    const SizedBox(width: 120.0,),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white,
                        child: MaterialButton(
                                       onPressed: () {
                                       },
                                       color: Colors.blue,
                                        textColor: Colors.white,
                                        minWidth: 5,
                                        padding: const EdgeInsets.all(2.0),
                                        shape: const CircleBorder(),
                                        child: const Icon(
                                        Icons.add_rounded,
                                        size: 25,
                        ),
                          ),
                      ),
                    ),
              ]
            ),
            const SizedBox(height: 60.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
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
              ]
            ),
        )
        );
  }
}
