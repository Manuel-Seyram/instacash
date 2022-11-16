import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class AddNewcard extends StatefulWidget {
  const AddNewcard({super.key});

  @override
  State<AddNewcard> createState() => _AddNewcardState();
}

class _AddNewcardState extends State<AddNewcard> {

  
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
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            height: 50.0,
            color: Colors.white,
            child: Column(
              children: [
                _textformfieldbnumber(),
              ],
            ),
          ),
        ), 
        const SizedBox(
          height: 25.0,
        ),
        Row(
          children: [
             Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            height: 50.0,
            width: 140,
            color: Colors.white,
            child: Column(
              children: [
                _textformfielddate(),
              ],
            ),
          ),
        ),
        const SizedBox(width: 2.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 50.0,
            width: 80,
            color: Colors.white,
            child: Column(
              children: [
                _textformfieldcvv(),
              ],
            ),
          ),
        )

          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            height: 50.0,
            //width: 30,
            color: Colors.white,
            child: Column(
              children: [
                _textformfieldbname(),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Align(
          alignment: AlignmentDirectional(-0.83, 5.0),
          child: LoanCardSaveButton(),
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
          hintText: 'Card Number',
          hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),
          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                       // borderSide: BorderSide(),
                      ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none),
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
          hintText: 'Card Holder Name',
          hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.grey,
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

Widget _textformfielddate() {
  return SizedBox(
    child: TextFormField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Expiry date',
          hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _textformfieldcvv() {
  return SizedBox(
    child: TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'CVV',
          hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none),
      textAlign: TextAlign.center,
    ),
  );
}
