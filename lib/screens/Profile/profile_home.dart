import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Profile/widgets/profile_home_options.dart';
import 'package:instacash/screens/Profile/widgets/profile_home_options2.dart';
import 'package:instacash/screens/Profile/widgets/profile_home_options3.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(245, 246, 250, 100).withOpacity(0.6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70.0,),
            Row(
                children: [
                  const SizedBox(
                    width: 20.0,
                  ),
                  const SizedBox(
                    width: 145.0,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.2, 5.0),
                    child: Text(
                      'Profile',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black87,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60.0,),
              const Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage:AssetImage('assets/profile.png'),
                  foregroundImage: NetworkImage('https://img.freepik.com/free-photo/happiness-wellbeing-confidence-concept-cheerful-attractive-african-american-woman-curly-haircut-cross-arms-chest-self-assured-powerful-pose-smiling-determined-wear-yellow-sweater_176420-35063.jpg?w=2000'),
                ),
              ),
              const SizedBox(height: 40.0,),
              Center(
                child: Text(
                  'John Doe',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
                Center(
                  child: Row(
                    children: [
                      const SizedBox(width: 120.0,),
                      Text("Level:", 
                      style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                    ),),

                    const SizedBox(width: 10.0,),
                    Container(
                      height: 40.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(249, 40, 68, 194),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        children:  [
                           const SizedBox(width: 20.0,),
                             Text("Level 1",
                            style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),),
                          
                           const SizedBox(width: 10.0,),
                          const Icon(Icons.star, color: Colors.white, size: 20.0,) 
                        ],
                      ),
                    ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0,),
                const ProfileHomeOptions(),
                const SizedBox(height: 40.0,),
                const ProfileHomeOptions2(),
                const SizedBox(height: 40.0,),
                const ProfileHomeOptions3(),
          ],
        ),
      ),
    );
  }

}
