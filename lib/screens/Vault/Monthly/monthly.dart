import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Monthly/create_goal.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Savings/susu_amount.dart';



class Monthly extends StatefulWidget {
  const Monthly({super.key});

  @override
  State<Monthly> createState() => _MonthlyState();
}

class _MonthlyState extends State<Monthly> {
  bool checkedValue = false;
  bool checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child:
      Column(
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
            alignment: const AlignmentDirectional(-0.75, 5.0),
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
                  text: 'Savings type',
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
            height: 20.0,
          ),
          SizedBox(
            height: 300,
            width: 400,
            child: Image.asset('assets/savingssusu.png', fit: BoxFit.fill,),
          ),
          const SizedBox(height: 80.0,),
          SizedBox(
            height: 60.0,
            width: 350.0,
            child: MaterialButton(
        onPressed: () {
            PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const CreateGoal(),
                                withNavBar: true,
                              );   
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        
        child: Row(
            children: [
                   Text('start saving', style: 
                   GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          ),   
                    ),),
                    const SizedBox(width: 160,),
                    Text('Goals', style: 
                   GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          ),   
                    ),),

        ],)),
          ),
          const SizedBox(height: 30.0,),
          SizedBox(
            height: 60.0,
            width: 350.0,
            child: MaterialButton(
        onPressed: () {
            PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const SusuAmount(),
                                withNavBar: true,
                              );   
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        
        child: Row(
            children: [
                   Text('start saving', style: 
                   GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          ),   
                    ),),
                    const SizedBox(width: 160,),
                    Text('Susu', style: 
                   GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          ),   
                    ),),

        ],)),
          ),
        ],
      ),
      ),
    );
  }
}