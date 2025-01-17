// ignore_for_file: unnecessary_const

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Monthly/monthly_delivery_method.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CreateGoal extends StatefulWidget {
  const CreateGoal({super.key});

  @override
  State<CreateGoal> createState() => _CreateGoalState();
}

class _CreateGoalState extends State<CreateGoal> {
  bool checkedValue = false;
  bool checkedValue2 = false;
  late String _dropdownvalue;
  final List<String> items = [
    '  Select day',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];
  @override
  void initState() {
    super.initState();
    _dropdownvalue = items[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child: Column(
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
              alignment: const AlignmentDirectional(-0.75, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Create ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'a goal',
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
            const SizedBox(
              height: 40.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.79, 5.0),
              child: Text(
                'Enter goal name',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.1, 5.0),
              child: Container(
                height: 50.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Enter your goal name',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.79, 5.0),
              child: Text(
                'Enter target amount',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.1, 5.0),
              child: Container(
                height: 50.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                      decoration: const InputDecoration.collapsed(
                        hintText: 'GHS 0.00',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25.0,
                ),
                Text(
                  'Monthly contribution',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                Text(
                  'On every',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(children: [
              const SizedBox(
                width: 30.0,
              ),
              Container(
                height: 50.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                    decoration: const InputDecoration.collapsed(
                      hintText: 'GHS 0.00',
                    ),
                  ),
                )),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Container(
                width: 150.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: PopupMenuButton<String>(
                  itemBuilder: (context) {
                    return items.map((str) {
                      return PopupMenuItem(
                        value: str,
                        textStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                        child: Text(str),
                      );
                    }).toList();
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Text(
                          _dropdownvalue,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                  onSelected: (v) {
                    setState(() {
                      if (kDebugMode) {
                        print('!!!===== $v');
                      }
                      _dropdownvalue = v;
                    });
                  },
                ),
              ),
            ]),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 270,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(249, 40, 68, 194),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(children: [
                const SizedBox(
                  height: 40.0,
                ),
                Align(
                    alignment: const AlignmentDirectional(-0.0, 5.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Target goal of ',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextSpan(
                          text: ' GHS 20,000',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ]),
                    )),
                Align(
                  alignment: const AlignmentDirectional(-0.0, 5.0),
                  child: Text(
                    'will be achieved by',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.0, 5.0),
                  child: Text(
                    'December 2023',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 40.0,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const DeliveryMethodVaultMonth(),
                        withNavBar: true,
                      );
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 95.0,
                        ),
                        const Icon(
                          Icons.add,
                          color: Color.fromARGB(249, 40, 68, 194),
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Create a goal',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(249, 40, 68, 194),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
