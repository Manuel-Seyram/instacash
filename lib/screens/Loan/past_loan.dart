import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/delivery_method.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class   PastLoan extends StatelessWidget {
  const PastLoan({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Container(
          height: 200.0,
          width: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  Image.asset('assets/GetLoan.png', height: 60, width: 60),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Repayment Date',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '18 Nov 2022',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(top: 1.0, left: 20.0, right: 20.0),
                  child: StepProgressIndicator(
                      totalSteps: 3,
                      currentStep: 3,
                      padding: 0,
                      fallbackLength: 10.0,
                      roundedEdges: const Radius.circular(20),
                      size: 30.0,
                      selectedColor: Colors.green.shade400,
                      unselectedColor: Colors.grey.shade300,),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 1.5,
                indent: 20.0,
                endIndent: 20.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15.0,
                  ),
                  MaterialButton(
                        onPressed: null,
                        height: 40.0,
                        minWidth: 150.0,
                        disabledColor: Colors.grey.shade100
                            .withOpacity(1.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(
                          'Paid',
                          style: GoogleFonts.poppins(
                            textStyle:  TextStyle(
                                color: Colors.blue.shade900.withOpacity(0.3),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                  const SizedBox(
                    width: 20.0,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 180,),
        SizedBox(
          height: 90,
          width: 350,
          child: FloatingActionButton.large(
            onPressed: (){
              PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const DeliveryMethod(),
                              withNavBar: false,
                            );
            },
            backgroundColor: Colors.blue,
            clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            hoverElevation: 3.0,
            child: Row(
              children: [
                   const SizedBox(width: 5.0,),
                    Image.asset('assets/GetLoan.png', height: 60, width: 60),
                    Column(
                      children: [
                        const SizedBox(height: 20.0,),
                        Text(
                          ' Your next Loan',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(height: 5.0,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Text(
                            'GHS 800',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30.0,),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Get loan',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
            ),
        )
      ],
    );
  }
}
