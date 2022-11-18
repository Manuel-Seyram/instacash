import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Monthly/create_goal.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



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
                  text: 'Saving goal',
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
          Align(
            alignment: const AlignmentDirectional(-0.76, 5.0),
            child: Text('no savings goal recorded.',
             style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),),
          ),
          const SizedBox(height: 60.0,),
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
            alignment: const AlignmentDirectional(-0.33, 5.0),
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
          const SizedBox(height: 350.0,),
          Row(
            children: [
              const SizedBox(width: 10.0,),
              MaterialButton(
                 onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context, 
                    screen: const CreateGoal(),
                    withNavBar: true,);
                 },
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
          
        ],
      ),
      ),
    );
  }
  
}