import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHomeOptions extends StatelessWidget {
  const ProfileHomeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 50.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children:[
                const SizedBox(width: 5.0,),
                Image.asset('assets/account_profile.png', height: 25.0, width: 25.0,),
                const SizedBox(width: 20.0,),
                Text('Account Info',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(width: 160.0,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.black12, size: 20.0,)
              ]
            ),
          ),
        ),
        const SizedBox(height: 10.0,),
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 50.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children:[
                const SizedBox(width: 5.0,),
                Image.asset('assets/language.png', height: 25.0, width: 25.0,),
                const SizedBox(width: 20.0,),
                Text('Language',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(width: 180.0,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.black12, size: 20.0,)
              ]
            ),
          ),
        ),
        const SizedBox(height: 10.0,),
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 50.0,
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children:[
                const SizedBox(width: 5.0,),
                Image.asset('assets/profile_payments.png', height: 25.0, width: 25.0,),
                const SizedBox(width: 20.0,),
                Text('Payment Methods',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(width: 115.0,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.black12, size: 20.0,)
              ]
            ),
          ),
        )
        ],
    );
  }
}
