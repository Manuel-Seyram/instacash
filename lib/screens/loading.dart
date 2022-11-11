import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child:
           SpinKitFadingCircle(
              color: Colors.blue,
              size: 90.0,
              duration: Duration(seconds: 3),
            ),
          ),
          const SizedBox(height: 30.0,),
          Text(
            'Please wait...',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black45,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}


