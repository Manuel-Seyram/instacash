import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl_phone_field/intl_phone_field.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Phonebox extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Phonebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      child: Form(
        key: _formKey,
        child: 
            Container(
              color: Colors.white,
              child:
        Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: const AlignmentDirectional(-0.9, 5.0),
              child: Text('Phone Number', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black45, fontSize: 12.0, fontWeight: FontWeight.w500))),
            ),
            IntlPhoneField(
              showCursor: true,
              initialCountryCode: 'GH',
              disableLengthCheck: true,
              style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w500)),
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.left,
              decoration: const InputDecoration(
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Colors.black,),
              ),
              onChanged: (phone) {
                if (kDebugMode) {
                  print(phone.completeNumber);
                }
              },
              onCountryChanged: (country) {
                if (kDebugMode) {
                  print('Country changed to: ${country.name}');
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            
          ],
      ),
        ),
      ),
    );
  }
}
