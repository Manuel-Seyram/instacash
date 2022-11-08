import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/bank_loan_repayment_container.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/bank_loan_details_container.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/card_loan_payment_method.dart';
import 'package:instacash/screens/Loan/Loan%20widgets/loan_card.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class CardReceipt extends StatefulWidget {
  const CardReceipt({super.key});

  @override
  State<CardReceipt> createState() => _CardReceiptState();
}

class _CardReceiptState extends State<CardReceipt> {
  bool checkedValue = false;
  bool checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          const SizedBox(
            height: 40.0,
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
            alignment: const AlignmentDirectional(-0.6, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Submit ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'Loan Request',
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
            alignment: const AlignmentDirectional(-0.0, 5.0),
            child: Text(
              'Loan repayment will be automatically deducted',
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
              'from your account on the due date',
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
          const LoanCardPaymentMethodContainer(),
          const SizedBox(height: 20.0,),
    Align(
      alignment: const AlignmentDirectional(-0.61, 5.0),
      child:
          CheckboxListTile(
  title: Text("Confirm auto repayment date & fees",
  style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),),
  value: checkedValue,
  onChanged: (newValue) {
    setState(() {
      checkedValue = newValue!;
    });
  },
  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
),
    ),
const SizedBox(height: 5.0,),
Align(
  alignment: const AlignmentDirectional(-0.8, 5.0),
  child:
CheckboxListTile(
  title: Text("By ticking this, I accept the Terms and Conditions",
  style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),),
  value: checkedValue2,
  onChanged: (newValue) {
    setState(() {
      checkedValue2 = newValue!;
    });
  },
  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
),
),
const SizedBox(height:10.0),
const LoanCardReceiptButton(),

        ],
      ),
      ),
    );
  }
}
