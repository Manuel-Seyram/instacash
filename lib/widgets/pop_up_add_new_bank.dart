import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class PopPaymentAddBank extends StatefulWidget {
  const PopPaymentAddBank({super.key});

  @override
  State<PopPaymentAddBank> createState() => _PopPaymentAddBankState();
}

class _PopPaymentAddBankState extends State<PopPaymentAddBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.8, 5.0),
            child: Text(
              'Bank Detail',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color.fromARGB(249, 40, 68, 194),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const AddNewBank(),
        ],
      ),
    );
  }
}


class AddNewBank extends StatefulWidget {
  const AddNewBank({super.key});

  @override
  State<AddNewBank> createState() => _AddNewBankState();
}

class _AddNewBankState extends State<AddNewBank> {
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
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Align(
            alignment: const AlignmentDirectional(-0.63, 5.0),
            child: Text(
              'Enter bank account information',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
            )),
        const SizedBox(
          height: 30.0,
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
                  Padding(padding: const EdgeInsets.only(left: 25.0),
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
                    width: 150.0,
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
        ),
        const SizedBox(
          height: 20.0,
        ),
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
        const SizedBox(
          height: 20.0,
        ),
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
        const SizedBox(
          height: 40.0,
        ),
        const Align(
          alignment: AlignmentDirectional(-0.1, 5.0),
          child: RepayConfirmButton(),
        ),
      ],
    );
  }
}

Widget _textformfieldbnumber() {
  return SizedBox(
    child: 
      Padding(padding: const EdgeInsets.only(left: 25.0),
    child: TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Account Number',
          hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none),
      textAlign: TextAlign.start,
    ),
      ),
  );
}

Widget _textformfieldbname() {
  return SizedBox(
    child: 
      Padding(padding: const EdgeInsets.only(left: 25.0),
    child: TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: 'Account Name',
          hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none),
      textAlign: TextAlign.start,
    ),
      ),
  );
}

