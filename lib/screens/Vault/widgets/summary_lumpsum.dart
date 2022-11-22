import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/widgets/lump_sum_summary_detail_container.dart';
import 'package:instacash/screens/Vault/widgets/lump_sum_summary_detail_container2.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class PageSummary extends StatelessWidget {
  const PageSummary({super.key});

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
                const SizedBox(
                  width: 30.0,
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
              alignment: const AlignmentDirectional(-0.55, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Investment ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'summary',
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
          const SizedBox(
            height: 100.0,
          ),
          const LumpSumDetailsContainer(),
          const SizedBox(
            height: 40.0,
          ),
          const LumpSumDetailsContainer2(),
          const SizedBox(height: 60.0,),
          const LumpSumBankConfirmButton(),
        ],
      ),
    );
  }
}
