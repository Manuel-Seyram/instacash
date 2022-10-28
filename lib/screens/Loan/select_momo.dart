// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class SelectMomo extends StatefulWidget {
  const SelectMomo({super.key});

  @override
  State<SelectMomo> createState() => _SelectMomoState();
}

class _SelectMomoState extends State<SelectMomo> {
  final String _selectedValue = '';
  late String _dropdownvalue;
   bool checkedValue = false;
  final List<String> items = [
    'Select network',
    'MTN',
    'Vodafone',
    'AirtelTigo',
  ];
  @override
  void initState() {
    super.initState();
    _dropdownvalue = items[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                const CircleAvatar(
                  radius: 18.0,
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.62, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Select ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Mobile Money',
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
              alignment: const AlignmentDirectional(-0.47, 5.0),
              child: Text(
                'where do you want to receive the money',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),

            const SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/momo.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'Via momo - Instant',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 80.0,
                            ),
                            Radio(
                                value: "",
                                groupValue: "",
                                //fillColor:
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue;
                                  });
                                }),
                          ],
                        ),
                        //const SizedBox(height: 5.0,),
                        Align(
                          alignment: const AlignmentDirectional(-0.55, 5.0),
                          child: Text(
                            'Ghs 0.00 - No Fees',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.3, 5.0),
                          child: Text(
                            'Instantly Available',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 30.0,),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child:
              Text(
                'Enter mobile money details',
              style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500),
                            ),
              )
            ),
            const SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
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
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                          Align(
                           // alignment: const AlignmentDirectional(-0.1, 5.0),
                            child:
                        Text(_dropdownvalue,
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 180.0,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    onSelected: (v) {
                      setState(() {
                        if (kDebugMode) {
                          print('!!!===== $v');
                        }
                        _dropdownvalue= v;
                      });
                    },
                  ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                _textformfieldbnumber(),
                  ], 
                ),
              ),
            ),

        const SizedBox(height: 20.0,),
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                _textformfieldbname(),
                  ], 
                ),
              ),
            ),
            const SizedBox(height: 3.0,),
            Align(
              alignment: const AlignmentDirectional(-0.63, 5.0),
              child: Text(
                'Make sure you confirm the number before',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ) 
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: Text(
                'you proceed.',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ) 
              ),
            ),
            const SizedBox(height: 10.0,),
           const Align(
              alignment: AlignmentDirectional(-0.83, 5.0),
              child:
             BankSavetButton(),
            ),
            const SizedBox(height: 20.0,),
            const BankContinueButton(),
          ],
        ),
      ),
    );
  }
}

Widget _textformfieldbnumber() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration:  InputDecoration(
            hintText: 'Enter mobile money Number',
            hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 14.0,
                fontWeight: FontWeight.w500)), 
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
                textAlign: TextAlign.start,
      ),
    );
  }


  Widget _textformfieldbname() {
    return SizedBox(
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration:  InputDecoration(
            hintText: 'enter full name',
            hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 14.0,
                fontWeight: FontWeight.w500)), 
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
                textAlign: TextAlign.start,
      ),
    );
  }