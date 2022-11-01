import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';
import 'package:instacash/widgets/pop_up_add_new_payment.dart';

class PopPayment extends StatelessWidget {
  const PopPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.7, 5.0),
            child: Text(
              'Select mode of payment',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color.fromARGB(249, 40, 68, 194),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
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
                    height: 15.0,
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
                        width: 15.0,
                      ),
                      Column(children: [
                        Text(
                          'Use saved bank',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '*************1121',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 90.0,
                      ),
                      Radio(
                          value: "",
                          groupValue: "",
                          //fillColor:
                          onChanged: (value) {}),
                    ],
                  ),
                ],
              )),
          const SizedBox(
            height: 12.0,
          ),
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
                    height: 15.0,
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
                        width: 15.0,
                      ),
                      Column(children: [
                        Text(
                          'Use saved bank',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '*************1121',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 90.0,
                      ),
                      Radio(
                          value: "",
                          groupValue: "",
                          //fillColor:
                          onChanged: (value) {}),
                    ],
                  ),
                ],
              )),
          const SizedBox(
            height: 12.0,
          ),
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
                    height: 15.0,
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
                        width: 15.0,
                      ),
                      Column(children: [
                        Text(
                          'Use saved bank',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '*************1121',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 90.0,
                      ),
                      Radio(
                          value: "",
                          groupValue: "",
                          //fillColor:
                          onChanged: (value) {}),
                    ],
                  ),
                ],
              )),
              const SizedBox(height: 12.0,),
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
                  child: const PopAddPayment(),
                ));
              });
                },
                child:
              Container(
                height:60.0 ,
                width: 340.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                child:
              Row(
                children: [
                  const SizedBox(width: 12.0,),
                  const Icon(Icons.add, size: 35.0, color: Color.fromARGB(249, 40, 68, 194) ,),
                  const SizedBox(width: 25.0,),
                  Text(
                    'Add new payment mode',
                    style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color:  Color.fromARGB(249, 40, 68, 194),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),  
                  ),
                  const SizedBox(width:25.0,),
                  const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(249, 40, 68, 194), size: 15.0,)
                ],
              )
              ),
              ),
              const SizedBox(height: 20.0,),
              const RepayConfirmButton(),
        ],
      ),
    );
  }
}
