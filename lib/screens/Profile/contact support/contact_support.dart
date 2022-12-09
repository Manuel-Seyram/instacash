import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({super.key});
  
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
            const SizedBox(width: 30.0,),
             GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Color.fromARGB(249, 40, 68, 194),
                ),
              ),
              const SizedBox(width: 100.0,),
              Text('Support',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:Colors.black87,
                        fontSize:20.0,
                        fontWeight: FontWeight.w500),
                  )),
           ],
         ),
        const SizedBox(height: 40.0,),
        Align(
          alignment: const AlignmentDirectional(-0.7, 5.0),
          child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: ' Contact ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Support ',
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
        const SizedBox(height: 50.0,),
        Row(
          children: [
            const SizedBox(width: 30.0,),
            const Icon(Icons.phone_outlined, color: Colors.blue, size: 30.0,),
            const SizedBox(width: 20.0,),
            Text('+233 123 456 7890', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),),
          ],
        ),
        const SizedBox(height: 40.0,),
         Row(
          children: [
            const SizedBox(width: 30.0,),
            const Icon(Icons.email_outlined, color: Colors.blue, size: 30.0,),
            const SizedBox(width: 20.0,),
            Text('support@instacash.com', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),),
          ],
        ),
        const SizedBox(height: 40.0,),
         Row(
          children: [
            const SizedBox(width: 30.0,),
            const Icon(Icons.chat_outlined, color: Colors.blue, size: 30.0,),
            const SizedBox(width: 20.0,),
            Text('chat on WhatsApp', style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),),
          ],
        )
        ],
      ),
    );
  }
  
}