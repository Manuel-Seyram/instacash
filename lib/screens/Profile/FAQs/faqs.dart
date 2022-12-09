import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Faqs extends StatelessWidget{
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
      child:
      Column(
        children:  [
                     const SizedBox(
          height: 70.0,
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
          height: 30.0,
        ),

                             Align(
                      alignment: const AlignmentDirectional(-0.5, 5.0),
                      child:
                    RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'You have any questions? ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
                ),
                const SizedBox(height: 30.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.75, 5.0),
                  child: Text('Frequently Asked', style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),),
                ),
                const SizedBox(height: 20.0,),
                Container(
                  width: 350.0,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0,),
                      Align(
                        alignment: const AlignmentDirectional(-0.6, 5.0),
                        child: Text('How do I request for a loan on\nInstaCash?', 
                        style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),),
                      ),
                      const SizedBox(height: 10.0,),
                       Padding(
                         padding: const EdgeInsets.only(left: 1.0, right: 8.0),
                         child: Text('On the home page (dashboard), simply tap\non the get loan button under quick links and\nfollow the instructions to request a loan.', style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500),
                      ),),
                       ),
                    ],
                  )
                ),
                const SizedBox(height: 30.0,),
                Container(
                  width: 350.0,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0,),
                      Align(
                        alignment: const AlignmentDirectional(-0.7, 5.0),
                        child: Text('How do i transfer money?', 
                        style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),),
                      ),
                      const SizedBox(height: 10.0,),
                       Padding(
                         padding: const EdgeInsets.only(left: 1.0, right: 8.0),
                         child: Text('On the home page (dashboard), simply tap\non the transfer button under quick links and\nfollow the instructions to transfer funds.', style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500),
                      ),),
                       ),
                    ],
                  )
                ),
                const SizedBox(height: 30.0,),
                Container(
                  width: 350.0,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0,),
                      Align(
                        alignment: const AlignmentDirectional(-0.2, 5.0),
                        child: Text('Can i repay my loan using a debit\ncard?', 
                        style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(249, 40, 68, 194),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),),
                      ),
                      const SizedBox(height: 10.0,),
                       Padding(
                         padding: const EdgeInsets.only(left: 10.0, right: 1.0),
                         child: Text('Yes. When you want to repay your loan\nmanually before due date, you can select pay\nvia bank card on the payment method page.', style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500),
                      ),),
                       ),
                    ],
                  )
                )
        ],
      ),
      ),
    );
  }
} 