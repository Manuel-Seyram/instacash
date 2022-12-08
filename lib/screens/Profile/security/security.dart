import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
 bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100).withOpacity(1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
          height: 70.0,
        ),
         Row(
           children: [
            const SizedBox(width: 30.0,),
             GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Color.fromARGB(249, 40, 68, 194),
                ),
              ),
              const SizedBox(width: 100.0,),
              Text('Security',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:Colors.black87,
                        fontSize:20.0,
                        fontWeight: FontWeight.w500),
                  )),
           ],
         ),
        const SizedBox(height: 70.0,),
        Container(
          height: 60.0,
          width: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children:[
              const SizedBox(width: 10.0,),
              Text('Default Notification Actions',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  )),
                  const SizedBox(width: 45.0,),
                  CupertinoSwitch(value: _switchValue, 
                  onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },)
            ]
          ),
        ),
        const SizedBox(height: 20.0,),
        Container(
          height: 60.0,
          width: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children:[
              const SizedBox(width: 10.0,),
              Text('Login with Face ID',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  )),
                  const SizedBox(width: 120.0,),
                  CupertinoSwitch(value: _switchValue, 
                  onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },)
            ]
          ),
        ),
        const SizedBox(height: 20.0,),
        Container(
          height: 60.0,
          width: 350.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children:[
              const SizedBox(width: 10.0,),
              Text('Login with Touch ID',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color:Colors.black87,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  )),
                  const SizedBox(width: 110.0,),
                  CupertinoSwitch(value: _switchValue, 
                  onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },)
            ]
          ),
        ),
          ],)
         ),

    );
  }
}