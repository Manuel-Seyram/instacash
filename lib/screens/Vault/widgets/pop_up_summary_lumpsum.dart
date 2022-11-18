import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/widgets/lump_sum_summary_detail_container.dart';
import 'package:instacash/screens/Vault/widgets/lump_sum_summary_detail_container2.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class PopSummary extends StatelessWidget {
  const PopSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.65, 5.0),
            child: Text(
              'Please review and confirm the \ninvestment summary',
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
          const LumpSumDetailsContainer(),
          const SizedBox(
            height: 20.0,
          ),
          const LumpSumDetailsContainer2(),
          const SizedBox(height: 40.0,),
          const LumpSumBankConfirmButton(),
        ],
      ),
    );
  }
}
