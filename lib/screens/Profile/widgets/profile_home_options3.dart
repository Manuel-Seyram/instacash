import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Customer%20Onboarding/login/login.dart';
import 'package:instacash/screens/Profile/Credit%20Score/credit_score.dart';
import 'package:instacash/screens/Profile/FAQs/faqs.dart';
import 'package:instacash/screens/Profile/contact%20support/contact_support.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ProfileHomeOptions3 extends StatelessWidget {
  const ProfileHomeOptions3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CreditScore()));
          },
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
                Image.asset('assets/creditscore.png', height: 40.0, width: 40.0,),
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
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Faqs()));
          },
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
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactSupport()));
          },
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
                Image.asset('assets/contactsupport.png', height: 40.0, width: 40.0,),
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
          onTap: (){
            _bottomsheet(context);
          },
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
        void _bottomsheet(BuildContext context){
    showBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200.0,
        width: double.infinity,
        decoration:  const BoxDecoration(
          color: Colors.white,
          //border: Border.all(color: Colors.black12),
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20.0,),
            Center(
              child: Text('Logout', style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500),
                              ),),
            ),
            const SizedBox(height: 10.0,),
            const Divider(color: Colors.black12, indent: 30.0, endIndent: 30.0, thickness: 1.0,),
            const SizedBox(height: 20.0,),
            Text('Are you sure you want to logout?',
            style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                )),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 40.0,),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 40.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: const Color.fromARGB(249, 40, 68, 194))
                        ),
                        child: Center(
                          child: Text('Cancel',
                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(249, 40, 68, 194),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                         PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const Login(),
                              withNavBar: false,
                            );
                      },
                      child: Container(
                        height: 40.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                          //border: Border.all(color: Colors.black12)
                        ),
                        child: Center(
                          child: Text('Logout',
                          style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                )
          ],
        ),
      ),
    );
  }

  