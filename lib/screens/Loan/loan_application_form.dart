import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class LoanApplication extends StatefulWidget {
  const LoanApplication({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoanApplicationState createState() => _LoanApplicationState();
}

class _LoanApplicationState extends State<LoanApplication> {
   late String _dropdownvalue;
   late String _dropdownvalue1;
   late String _dropdownvalue2;
   late String _dropdownvalue3;
   late String _dropdownvalue4;
   bool checkedValue = false;
  final List<String> items = [
    'Select your highest degree',                                            
  ];
  final List<String> employment = [
    'Select your employment status',                                            
  ];
  final List<String> profession = [
    'Select your profession',                                            
  ];
  final List<String> income = [
    'Enter your salary',                                            
  ];
  final List<String> marital = [
    'Marital Status',                                            
  ];
  @override
  void initState() {
    super.initState();
    _dropdownvalue = items[0];
    _dropdownvalue1 = employment[0];
    _dropdownvalue2 = profession[0];
    _dropdownvalue3 = income[0];
    _dropdownvalue4 = marital[0];
  }

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
                const SizedBox(width: 20.0,),
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
            const SizedBox(width: 280.0,),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.55, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Loan ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Application Form',
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
            const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.4, 5.0),
              child: Text(
                'Please fill in the following information.',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'What is your education Level?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                  child: PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return items.map((str) {
                        return PopupMenuItem(
                          value: str,
                          textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                          child: Text(str),
                        );
                      }).toList();
                    },
                    child: Row(
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                           Padding(padding: const EdgeInsets.only(left: 25.0),
                            child:
                        Text(_dropdownvalue,
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 60.0,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    onSelected: (v) {
                      setState(() {
                        if (kDebugMode) {
                          print('!!!===== $v');
                        }
                        _dropdownvalue= v;
                      });
                    },
                  ),
              ),
            ),
            const SizedBox(height: 30.0,),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'What is your employment status?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                  child: PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return employment.map((str) {
                        return PopupMenuItem(
                          value: str,
                          textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                          child: Text(str),
                        );
                      }).toList();
                    },
                    child: Row(
                      children: <Widget>[
                       Padding(padding: const EdgeInsets.only(left: 25.0),
                            child:
                        Text(_dropdownvalue1,
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 25.0,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    onSelected: (v) {
                      setState(() {
                        if (kDebugMode) {
                          print('!!!===== $v');
                        }
                        _dropdownvalue1= v;
                      });
                    },
                  ),
              ),
            ),   
        const SizedBox(height: 30.0,),
        Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'What is your profession?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                  child: PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return profession.map((str) {
                        return PopupMenuItem(
                          value: str,
                          textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                          child: Text(str),
                        );
                      }).toList();
                    },
                    child: Row(
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         Padding(padding: const EdgeInsets.only(left: 25.0),
                            child:
                        Text(_dropdownvalue2,
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 100.0,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    onSelected: (v) {
                      setState(() {
                        if (kDebugMode) {
                          print('!!!===== $v');
                        }
                        _dropdownvalue2= v;
                      });
                    },
                  ),
              ),
            ),
            const SizedBox(height: 30.0,),
            Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'What is your annual income?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                  child: PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return income.map((str) {
                        return PopupMenuItem(
                          value: str,
                          textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                          child: Text(str),
                        );
                      }).toList();
                    },
                    child: Row(
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[ 
                       Padding(padding: const EdgeInsets.only(left: 25.0),
                            child:
                        Text(_dropdownvalue3,
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 140.0,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    onSelected: (v) {
                      setState(() {
                        if (kDebugMode) {
                          print('!!!===== $v');
                        }
                        _dropdownvalue3= v;
                      });
                    },
                  ),
              ),
            ),
        const SizedBox(height: 30.0,),
        Align(
              alignment: const AlignmentDirectional(-0.7, 5.0),
              child: Text(
                'What is your marital status?',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60.0,
                color: Colors.white,
                  child: PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return marital.map((str) {
                        return PopupMenuItem(
                          value: str,
                          textStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                          child: Text(str),
                        );
                      }).toList();
                    },
                    child: Row(
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         Padding(padding: const EdgeInsets.only(left: 25.0),
                            child:
                        Text(_dropdownvalue4,
                        style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 160.0,),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    onSelected: (v) {
                      setState(() {
                        if (kDebugMode) {
                          print('!!!===== $v');
                        }
                        _dropdownvalue4= v;
                      });
                    },
                  ),
              ),
            ),

        const SizedBox(height: 40.0,),
        const LoanInformationButton(),
        
          ],
        ),
      ),
    
    );
    
  }
}
