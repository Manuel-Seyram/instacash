// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class BankInformation extends StatefulWidget {
  const BankInformation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BankInformationState createState() => _BankInformationState();
}

class _BankInformationState extends State<BankInformation> {
   late String _dropdownvalue;
   bool checkedValue = false;
  final List<String> items = [
    'Select your bank',
    'Access Bank',
    'Stanbic Bank',
    'ABSA Bank',
    'GT Bank',
    'Standard Chartered Bank',
    'Cal Bank'
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
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.6, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Personal ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Information',
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
            const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.4, 5.0),
              child: Text(
                'Please fill in the following information.',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'Bank Account information.',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
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
            const SizedBox(height: 30.0,),
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

        const SizedBox(height: 30.0,),
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
        const SizedBox(height: 40.0,),

        CheckboxListTile(
  title: Text("I do not have a bank account",
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

        const SizedBox(height: 160.0,),
        const BankAccountInformationButton(),
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
            hintText: 'Account Number',
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
            hintText: 'Account Name',
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