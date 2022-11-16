import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/widgets/days30.dart';
import 'package:instacash/screens/Vault/widgets/days60.dart';
import 'package:instacash/screens/Vault/widgets/days_15.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class LumpSumFunding extends StatefulWidget {
  const LumpSumFunding({super.key});

  @override
  State<LumpSumFunding> createState() => _LumpSumFundingState();
}

class _LumpSumFundingState extends State<LumpSumFunding> {
  bool _isVisible = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;

    showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

   showToast1() {
    setState(() {
      _isVisible1 = !_isVisible1;
    });
  }

   showToast2() {
    setState(() {
      _isVisible2 = !_isVisible2;
    });
  }

  showToast3() {
    setState(() {
      _isVisible3 = !_isVisible3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            height: 40.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.5, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Choose ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'funding amount',
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
            height: 20.0,
          ),
          Align(
              alignment: const AlignmentDirectional(-0.8, 5.0),
              child: Text(
                'Enter amount to save',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              )),
          const SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 80.0,
              color: Colors.white,
              child: const Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40.0, color: Color.fromARGB(249, 40, 68, 194)),
                  decoration: InputDecoration.collapsed(
                    hintText: '₵ 0.00',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: Text(
                'Tenor',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              )),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              TextButton(
                onPressed: () {
                  showToast();
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.grey.shade300),
                ))),
                child: const Text(
                  '15 days',
                  style: TextStyle(
                      color: Color.fromARGB(249, 40, 68, 194),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              TextButton(
                onHover: (value) => const Color.fromARGB(249, 40, 68, 194),
                onPressed: () {
                  showToast1();
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.grey.shade300),
                ))),
                child: const Text(
                  '30 days',
                  style: TextStyle(
                      color: Color.fromARGB(249, 40, 68, 194),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              TextButton(
                onHover: (value) => const Color.fromARGB(249, 40, 68, 194),
                onPressed: () {
                  showToast2();
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.grey.shade300),
                ))),
                child: const Text(
                  '60 days',
                  style: TextStyle(
                      color: Color.fromARGB(249, 40, 68, 194),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              TextButton(
                onHover: (value) => const Color.fromARGB(249, 40, 68, 194),
                onPressed: () {
                  showToast3();
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.grey.shade300),
                ))),
                child: const Text(
                  '1 year',
                  style: TextStyle(
                      color: Color.fromARGB(249, 40, 68, 194),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Visibility(
        //replacement: const SizedBox(height: 50.0,),
        visible: _isVisible,
        child: const Days15(),
      ),
    
      Visibility(
        //replacement: const SizedBox(height: 50.0,),
        visible: _isVisible1,
        child: const Days30(),
      ),

      Visibility(
        // replacement: const SizedBox(height: 50.0,),
        visible: _isVisible2,
        child: const Days60(),
      ),

      Visibility(
        //replacement: const SizedBox(height: 50.0,),
        visible: _isVisible3,
        child: const Days15(),
      ),
          const SizedBox(
            height: 200.0,
          ),
          const LumpSumContinueButton(),
        ],
      ),
    );
  }

  }
