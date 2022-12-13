import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Profile/Account%20info/account_edit.dart';

class ViewAccount extends StatelessWidget {
  const ViewAccount({super.key});

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
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Color.fromARGB(249, 40, 68, 194),
                  ),
                ),
                const SizedBox(
                  width: 90.0,
                ),
                Text('Account Info',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            Stack(clipBehavior: Clip.none, children: [
              const Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/profile.png'),
                    foregroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/happiness-wellbeing-confidence-concept-cheerful-attractive-african-american-woman-curly-haircut-cross-arms-chest-self-assured-powerful-pose-smiling-determined-wear-yellow-sweater_176420-35063.jpg?w=2000'),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: -80,
                  left: 10,
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: const Color.fromARGB(249, 40, 68, 194),
                    padding: const EdgeInsets.all(5.0),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  )),
            ]),
            const SizedBox(
              height: 40.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.75, 5.0),
              child: Text(
                'Personal Info',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Your name',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 100.0,
                ),
                Text(
                  'John Doe',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(249, 40, 68, 194),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Occupation',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 90.0,
                ),
                Text(
                  'UX Designer',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(249, 40, 68, 194),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Ghanaian',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 110.0,
                ),
                MaterialButton(
                  onPressed: null,
                  disabledColor:
                      const Color.fromARGB(249, 40, 68, 194).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                    'Change',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.75, 5.0),
              child: Text(
                'Contact Info',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Phone number',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Text(
                  '(+233) 24 000 0000',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(249, 40, 68, 194),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 60.0,
                ),
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Text(
                  'eben.tre@outlook.com',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(249, 40, 68, 194),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const EditProfile()));
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Edit',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ))
          ],
        ),
      ),
    );
  }
}
