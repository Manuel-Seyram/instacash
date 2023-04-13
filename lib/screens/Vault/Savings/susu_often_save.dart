import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/Calendar/calendar.dart';
import '../../../widgets/instacash_buttons.dart';

class SusuOftenSave extends StatefulWidget {
  const SusuOftenSave({super.key});

  @override
  State<SusuOftenSave> createState() => _SusuOftenSaveState();
}

class _SusuOftenSaveState extends State<SusuOftenSave> {
  late String _dropdownvalue;
  final List<String> items = [
    'Daily',
    'Weekly',                                           
  ];
  @override
  void initState() {
    super.initState();
    _dropdownvalue = items[0];
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
            alignment: const AlignmentDirectional(-0.5, 5.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Choose ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextSpan(
                  text: 'how often to save',
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
          Align(
            alignment: const AlignmentDirectional(-0.6, 5.0),
            child: Text('Daily or weekly', 
            style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),),
          ),
          const SizedBox(height: 60.0,),
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
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),),),
                        const SizedBox(width: 230.0,),
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
            alignment: const AlignmentDirectional(-0.84, 5.0),
            child: Text('On every:', 
            style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),),
          ),
          const SizedBox(height: 20.0),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:
          Container(
            height: 300,
            width: 420,
            color: Colors.white,
            child:
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child:
              Calendar()
            )
          )
          ),
          const SizedBox(height: 40.0,),
          const SusuContinueButton(),
          ],
        ),
      ),
    );
  }
}
