import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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

final Map<int, Widget> tenor = const <int, Widget>{
    0: Text('15 days'),
    1: Text('30 days'),
    2: Text('60 days'),
    3: Text('1 year'),
  };

  final Map<int, Widget> data = const <int, Widget>{
    0: Days15(),
    1: Days30(),
    2: Days60(),
    3: Days60(),
  };

  int? sharedValue;

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
          Row(
            children: [
              const SizedBox(width: 30.0,),
              Text('Enter Amount to invest:', style:GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),),
                  const SizedBox(width: 20.0,),
                  RichText(
                    text: TextSpan(
                      children:[
                        TextSpan(
                          text:
                    'Min: ', style:GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),),
                  
                  TextSpan(
                          text:
                    'GHS 5,000.00', style:GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.green,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),),
                  ])),
            ],
          ),
          const SizedBox(
            height: 60.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 90.0,
              color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
              child: const Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40.0, color: Color.fromARGB(249, 40, 68, 194)),
                  decoration: InputDecoration.collapsed(
                    hintText: '₵ 0.00',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(249, 40, 68, 194),
                    )
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
            SizedBox(
              width: 390.0,
              child: CupertinoSegmentedControl<int>(
                selectedColor: const Color.fromARGB(249, 40, 68, 194),
                children: tenor,
                onValueChanged: (int val) {
                  setState(() {
                    sharedValue = val;
                  });
                },
                groupValue: sharedValue,
              ),
            ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            child: data[sharedValue],
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
