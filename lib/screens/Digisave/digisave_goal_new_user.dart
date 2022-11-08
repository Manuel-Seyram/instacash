import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';


class DigiSaveGoal extends StatefulWidget {
  const DigiSaveGoal({super.key});

  @override
  State<DigiSaveGoal> createState() => _DigiSaveGoalState();
}

class _DigiSaveGoalState extends State<DigiSaveGoal> {
  bool checkedValue = false;
  bool checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Row(
            children: const[
               SizedBox(
                width: 20.0,
              ),
              
               SizedBox(
                width: 310.0,
              ),
              CircleAvatar(
                radius: 18.0,
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: const AlignmentDirectional(-0.75, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'DigiSave ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'goal',
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
          const SizedBox(height: 10.0,),
          Align(
            alignment: const AlignmentDirectional(-0.75, 5.0),
            child: Text('GHS 0.00',
             style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(249, 40, 68, 194),
                        fontSize: 46.0,
                        fontWeight: FontWeight.w500),
                  ),),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.78, 5.0),
            child: Text('no history recorded.',
             style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),),
          ),
          const SizedBox(height: 20.0,),
          Align(
            alignment: const AlignmentDirectional(-0.84, 5.0),
            child:
            Text('Goals',
            style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
            ),
          ),
          const SizedBox(height: 10.0,),
          Align(
            alignment: const AlignmentDirectional(-0.22, 5.0),
          child: Container(
            color: Colors.white,
            height: 40.0,
            width: 320.0,
            child: Column(
              children : [
                const SizedBox(height: 10.0,),
            Align(
              alignment: const AlignmentDirectional(-0.8, 5.0),
              child: Text('you dont have a savings goal.',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        )
                  ),
              ),
            ),
              ],
            ),
          ),),
          const SizedBox(height: 210.0,),
          Row(
            children: [
              const SizedBox(width: 10.0,),
              MaterialButton(
                 onPressed: () {},
                 color: const Color.fromARGB(249, 40, 68, 194),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(5.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                  Icons.add_rounded,
                  size: 30,
                    ),
                      ),
              const SizedBox(width: 10.0,),
              Text('Deposit',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        ),   
                  ),
              )
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            children: [
              const SizedBox(width: 10.0,),
              MaterialButton(
                 onPressed: () {},
                 color: const Color.fromARGB(249, 40, 68, 194),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(5.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                  Icons.add_rounded,
                  size: 30,
                    ),
                      ),
              const SizedBox(width: 10.0,),
              Text('Add new savings goal',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        ),   
                  ),
              )
            ],
          ),
          const SizedBox(height: 30.0,),
          const DigiSaveGoalButton (),
        ],
      ),
      ),
    );
  }
  
}