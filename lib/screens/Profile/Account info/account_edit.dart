import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Profile/Account%20info/view_account.dart';

class EditProfile extends StatelessWidget{
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
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
                Text('Edit Account',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            const SizedBox(height: 60.0,),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: Text('Your name', style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),),
            ),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 7.0,),
                _textformfieldEditname(),
                  ], 
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: Text('Occupation', style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),),
            ),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 7.0,),
                _textformfieldEditoccupation(),
                  ], 
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: Text('Phone number', style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),),
            ),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 7.0,),
                _textformfieldEditphone(),
                  ], 
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: Text('Email', style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),),
            ),
            const SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 7.0,),
                _textformfieldEditemail(),
                  ], 
                ),
              ),
            ),
            const SizedBox(height: 100.0,),
            MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ViewAccount()));
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Save',
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

Widget _textformfieldEditname() {
    return SizedBox(
      child: 
      Padding(padding: const EdgeInsets.only(left: 25.0),
      child:
       TextFormField(
        keyboardType: TextInputType.name,
        decoration:  InputDecoration(
            hintText: 'Jane Doe',
            hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Color.fromARGB(249, 40, 68, 194),
                fontSize: 16.0,
                fontWeight: FontWeight.w400)), 
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
                textAlign: TextAlign.start,
      ),
      ),
    );
  }

  Widget _textformfieldEditoccupation() {
    return SizedBox(
      child: 
      Padding(padding: const EdgeInsets.only(left: 25.0),
      child:
       TextFormField(
        keyboardType: TextInputType.name,
        decoration:  InputDecoration(
            hintText: 'UX Designer',
            hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Color.fromARGB(249, 40, 68, 194),
                fontSize: 16.0,
                fontWeight: FontWeight.w400)), 
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
                textAlign: TextAlign.start,
      ),
      ),
    );
  }

  Widget _textformfieldEditphone() {
    return SizedBox(
      child: 
      Padding(padding: const EdgeInsets.only(left: 25.0),
      child:
       TextFormField(
        keyboardType: TextInputType.number,
        decoration:  InputDecoration(
            hintText: '(+233) 24 000 0000',
            hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Color.fromARGB(249, 40, 68, 194),
                fontSize: 16.0,
                fontWeight: FontWeight.w400)), 
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
                textAlign: TextAlign.start,
      ),
      ),
    );
  }

  Widget _textformfieldEditemail() {
    return SizedBox(
      child: 
      Padding(padding: const EdgeInsets.only(left: 25.0),
      child:
       TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration:  InputDecoration(
            hintText: 'eben.tre@outlook.com',
            hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Color.fromARGB(249, 40, 68, 194),
                fontSize: 16.0,
                fontWeight: FontWeight.w400)), 
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
                textAlign: TextAlign.start,
      ),
      ),
    );
  }