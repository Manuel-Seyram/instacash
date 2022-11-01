import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/pop_up_add_new_bank.dart';
import 'package:instacash/widgets/pop_up_add_new_card.dart';
import 'package:instacash/widgets/pop_up_add_new_momo.dart';

class PopAddPayment extends StatelessWidget {
  const PopAddPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.6, 5.0),
            child: Text(
              'Add a new mode of payment',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color.fromARGB(249, 40, 68, 194),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          GestureDetector(
            onTap:(() {
              showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                    child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 500,
                  child: const PopPaymentAddBank(),
                ));
              });
            }) ,
            child:
          Container(
              height: 85.0,
              width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.4,
                  )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Image.asset(
                        'assets/Bank.png',
                        height: 40.0,
                        width: 30.0,
                      ),
                      const SizedBox(
                        width: 35.0,
                      ),
                      Column(children: [
                        Text(
                          'Add bank',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                      ]),
                      const SizedBox(
                        width: 150.0,
                      ),
                      const Icon(Icons.arrow_forward_ios, size:15.0, color: Color.fromARGB(249, 40, 68, 194) ,),
                    ],
                  ),
                ],
              )),),
          const SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                    child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 500,
                  child: const PopPaymentAddCard(),
                ));
              });
            },
            child:
          Container(
              height: 85.0,
              width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.4,
                  )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Image.asset(
                        'assets/Card.png',
                        height: 40.0,
                        width: 30.0,
                      ),
                      const SizedBox(
                        width: 35.0,
                      ),
                      Column(children: [
                        Text(
                          'Add card',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                      ]),
                      const SizedBox(
                        width: 150.0,
                      ),
                      const Icon(Icons.arrow_forward_ios, size:15.0, color: Color.fromARGB(249, 40, 68, 194) ,),
                    ],
                  ),
                ],
              )),),
          const SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                    child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 500,
                  child: const PopPaymentAddMomo(),
                ));
              });
            },
            child:
          Container(
              height: 85.0,
              width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.4,
                  )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Image.asset(
                        'assets/momo.png',
                        height: 40.0,
                        width: 30.0,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      Column(children: [
                        Text(
                          'Add Mobile Money',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                      ]),
                      const SizedBox(
                        width: 90.0,
                      ),
                      const Icon(Icons.arrow_forward_ios, size:15.0, color: Color.fromARGB(249, 40, 68, 194) ,),
                    ],
                  ),
                ],
              )),),
              const SizedBox(height: 12.0,),
              
        ],
      ),
    );
  }
}
