import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/choose_deposit_method.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



class CreateGoal extends StatefulWidget {
  const CreateGoal({super.key});

  @override
  State<CreateGoal> createState() => _CreateGoalState();
}

class _CreateGoalState extends State<CreateGoal> {
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
                  text: 'Create ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'a goal',
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
          const SizedBox(height: 40.0,),
          Align(
            alignment: const AlignmentDirectional(-0.79, 5.0),
            child:
            Text('Enter goal name',
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
            height: 50.0,
            width: 360.0,
            child: 
             Center(
              child:
            TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black87,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                      
                  decoration: const InputDecoration.collapsed(
                    hintText: '   enter your goal name',
                  ),
                ),
          ),
          ),),

          const SizedBox(height: 20.0,),
          Align(
            alignment: const AlignmentDirectional(-0.79, 5.0),
            child:
            Text('Enter target amount',
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
            height: 50.0,
            width: 360.0,
            child: 
             Center(
              child:
            TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black87,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                      
                  decoration: const InputDecoration.collapsed(
                    hintText: '   GHS 0.00',
                  ),
                ),
          ),
          ),), 
          const SizedBox(height: 20.0,),
          Align(
            alignment: const AlignmentDirectional(-0.79, 5.0),
            child:
            Text('Monthly contribution',
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
            height: 50.0,
            width: 360.0,
            child: 
             Center(
              child:
            TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black87,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                      
                  decoration: const InputDecoration.collapsed(
                    hintText: '   GHS 0.00',
                  ),
                ),
          ),
          ),),
          const SizedBox(height: 30.0,),
          SizedBox(
           height: 200,
           width: 380.0,
           child: Card(
            color: const Color.fromARGB(249, 40, 68, 194),
           clipBehavior: Clip.antiAliasWithSaveLayer,
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10.0),
             ),
           elevation: 5,
             margin: const EdgeInsets.all(10),
             child: Column(
              children: [
                  const SizedBox(height: 20.0,),
                  Align(
                    alignment: const AlignmentDirectional(-0.0, 5.0),
                    child:
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Target goal of ',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextSpan(
                          text: ' GHS 20,000',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ]),
                     )
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.0, 5.0),
                    child:
                    Text('will be achieved by',
                    style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                  Align(
                    alignment: const AlignmentDirectional(-0.0, 5.0),
                    child:
                    Text('December 2023',
                    style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500),
                          ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  
                  TextButton(
                    onPressed: (){
                      PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const DeliveryMethodVault(),
                              withNavBar: false,
                            );
                    }, 
                    child: Row(
                      children: [
                        const SizedBox(width: 100.0,),
                        const Icon(Icons.add, color: Colors.white, size: 20.0,),
                        const SizedBox(width: 5.0,),
                        Text('Create a goal',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    ),
             ]
             ),
               ),
              ),
        ],
      ),
      ),
    );
  }
  
}