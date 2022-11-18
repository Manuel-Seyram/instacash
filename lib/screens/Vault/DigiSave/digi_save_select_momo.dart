import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/add_new_momo_loan.dart';
import 'package:instacash/widgets/instacash_buttons.dart';

class SelectMomoDigiSave extends StatefulWidget {
  const SelectMomoDigiSave({super.key});

  @override
  State<SelectMomoDigiSave> createState() => _SelectMomoDigiSaveState();
}

class _SelectMomoDigiSaveState extends State<SelectMomoDigiSave> {
  final String _selectedValue = '';
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
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
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.62, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Select ',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextSpan(
                    text: 'Mobile Money',
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
            //const SizedBox(height: 20.0),
            Align(
              alignment: const AlignmentDirectional(-0.47, 5.0),
              child: Text(
                'where do you want to receive the money',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),

            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                    height: 95.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/momo.png',
                              height: 40.0,
                              width: 30.0,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'Via momo - Instant',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 80.0,
                            ),
                            Radio(
                                value: "",
                                groupValue: "",
                                //fillColor:
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue;
                                  });
                                }),
                          ],
                        ),
                        //const SizedBox(height: 5.0,),
                        Align(
                          alignment: const AlignmentDirectional(-0.47, 5.0),
                          child: Text(
                            'Ghs 0.00 - No Fees',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.47, 5.0),
                          child: Text(
                            'Instantly Available',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  showToast();
                },
                child: Container(
                    height: 50.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Image.asset(
                              'assets/momo.png',
                              height: 30.0,
                              width: 20.0,
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'Add new Momo',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 140.0,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.black54,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 20.0,),
            Visibility(
              replacement: const SizedBox(height: 300.0,),
             visible: _isVisible,
            child: 
            const AddNewMomo(),
            ),
            const DigiSaveMomoContinueButton(),
          ],
        ),
      ),
    );
  }
}