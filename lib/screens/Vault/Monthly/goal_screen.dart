import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/Monthly/current_goal_screen.dart';
import 'package:instacash/screens/Vault/vault.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 40, 68, 194),
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Row(
              children: [
                const SizedBox(
                  width: 30.0,
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.9, 5.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 280.0,
                ),
              ],
            ),
      Container(
      height: 150.0,
      color: const Color.fromARGB(249, 40, 68, 194),
      child:
             Column(
              children : [
            const SizedBox(
              height: 30.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.8, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Savings Goals',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.77, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'GHS 12.256.00',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.55, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Choose the target are you want to fund.',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
              ),
            ),
          ],
            ),
      ),
   const SizedBox(
    height: 20.0,
   ),
      Container(
        height: 600,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0)
          )
        ),
        child: 
        Column(
          children: [
            const SizedBox(height: 25.0,),
            Align(
              alignment: const AlignmentDirectional(-0.76, 5.0),
              child: Text('Goals',
              style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(249, 40, 68, 194),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
              ),
            ),
            //const SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child:
            GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 30.0,
              childAspectRatio: 0.7,
              shrinkWrap: true,
              children: [
                GestureDetector(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context, screen: const SelectMonthly(), 
                          withNavBar: true);
                      },
                      child:
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children:[
               const SizedBox(height: 15.0,),
                Image.asset('assets/goals.png', height: 100.0, width: 100.0),
                const SizedBox(height: 12.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.55, 5.0),
                  child: Text('Education',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.35, 5.0),
                  child: Text('GHS 12,256.00',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height:5.0,),
                Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0, bottom: 12.0),
                child:
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                padding: 0,
                fallbackLength: 10.0,
                roundedEdges: const Radius.circular(10),
                 size: 6,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )
              ),
                ]
              ),
            ),
                    ),
                GestureDetector(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context, screen: const SelectMonthly(), 
                          withNavBar: true);
                      },
                      child:
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children:[
               const SizedBox(height: 15.0,),
                Image.asset('assets/goals.png', height: 100.0, width: 100.0),
                const SizedBox(height: 12.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.7, 5.0),
                  child: Text('House',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.35, 5.0),
                  child: Text('GHS 12,256.00',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height:5.0,),
                Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0, bottom: 12.0),
                child:
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                padding: 0,
                fallbackLength: 10.0,
                roundedEdges: const Radius.circular(10),
                 size: 6,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )
              ),
                ]
              ),
            ),
                    ),
                GestureDetector(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context, screen: const SelectMonthly(), 
                          withNavBar: true);
                      },
                      child:
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children:[
               const SizedBox(height: 15.0,),
                Image.asset('assets/goals.png', height: 100.0, width: 100.0),
                const SizedBox(height: 12.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.75, 5.0),
                  child: Text('Car',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Align(
                  alignment: const AlignmentDirectional(-0.35, 5.0),
                  child: Text('GHS 12,256.00',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height:5.0,),
                Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0, bottom: 12.0),
                child:
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                padding: 0,
                fallbackLength: 10.0,
                roundedEdges: const Radius.circular(10),
                 size: 6,
                 selectedColor: const Color.fromARGB(249, 40, 68, 194),
                 unselectedColor: Colors.grey.shade300,
                   )
              ),
                ]
              ),
            ),
                    ),
                GestureDetector(
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const SavingsMethod(),
                              withNavBar: true,
                            );
              },
              child:
            DottedBorder(
              color: Colors.blueAccent,
              borderType: BorderType.RRect,
              radius: const Radius.circular(10.0),
              strokeWidth: 1.5,
              dashPattern: const [9, 5],
              child: SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 60.0,),
                     const CircleAvatar(
                      backgroundColor: Color.fromARGB(249, 40, 68, 194),
                    
                      radius: 20.0,
                      child:
                      Icon(Icons.add, color: Colors.white, size: 30.0,),
                    ),
                    const SizedBox(height: 20.0,),
                    Align(
                      alignment: const AlignmentDirectional(-0.1, 5.0),
                      child: Text('Add a new\nsavings goal',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ]
                ),
              ),
                  ),
            ),
              ],
              )
            ),
          ],
        )
      ),
        ],
      ),
    ),
    );
  }
}
