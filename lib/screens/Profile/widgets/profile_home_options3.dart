import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHomeOptions3 extends StatelessWidget {
  const ProfileHomeOptions3({super.key});

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
                Image.asset('assets/questionmark.png', height: 40.0, width: 40.0,),
                const SizedBox(width: 20.0,),
                Text('Credit Score',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(width: 140.0,),
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
                Image.asset('assets/questionmark.png', height: 40.0, width: 40.0,),
                const SizedBox(width: 20.0,),
                Text('FAQs',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(width: 200.0,),
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
                Image.asset('assets/Faqs.png', height: 40.0, width: 40.0,),
                const SizedBox(width: 20.0,),
                Text('Contact Support',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color:Color.fromARGB(249, 40, 68, 194),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(width: 105.0,),
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
                Image.asset('assets/logout.png', height: 40.0, width: 40.0,),
                const SizedBox(width: 20.0,),
                Text('Logout',
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
        )
        ],
    );
  }
}
