import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'susu_often_save.dart';

class SusuAmount extends StatelessWidget {
  const SusuAmount({super.key});

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
            alignment: const AlignmentDirectional(-0.65, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Enter ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'Saving amount',
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
            height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 120.0,
              color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
              child: const Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  style: TextStyle(
                      fontSize: 60.0, color: Color.fromARGB(249, 40, 68, 194)),
                  decoration: InputDecoration.collapsed(
                    hintText: '₵ 0.00',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(249, 40, 68, 194),
                    )
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 150.0,),
          MaterialButton(
        onPressed: () {
          
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const SusuOftenSave(),
                              withNavBar: true,
                            );
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ))
        ],)
         ),
    );
  }
}
