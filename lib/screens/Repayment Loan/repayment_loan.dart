import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/bank_loan_repayment_container.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/bank_loan_details_container.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/loan_card.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class Repayment extends StatefulWidget {
  const Repayment({super.key});

  @override
  State<Repayment> createState() => _RepaymentState();
}

class _RepaymentState extends State<Repayment> {
  bool checkedValue = false;
  bool checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child:
      Column(
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
            alignment: const AlignmentDirectional(-0.75, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Current ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'Loan',
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
          //const SizedBox(height: 20.0),
          Align(
            alignment: const AlignmentDirectional(-0.2, 5.0),
            child: Text(
              'please confirm the loan summary below and',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.61, 5.0),
            child: Text(
              'proceed to pay the amount due',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(height: 20.0,),
          const LoanCard (),
          const LoanDetailsContainer(),
          const SizedBox(height: 20.0,),
          const LoanRepaymentDetailsContainer(),
          const SizedBox(height: 20.0,),
    
          const SizedBox(height: 5.0,),

          const SizedBox(height:10.0),
          const RepayButton(),

        ],
      ),
      ),
    );
  }
  
}

