import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectSusu extends StatefulWidget {
  const SelectSusu({super.key});

  @override
  State<SelectSusu> createState() => _SelectSusuState();
}

class _SelectSusuState extends State<SelectSusu> {

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
      height: 200.0,
      color: const Color.fromARGB(249, 40, 68, 194),
      child:
             Column(
              children : [
            const SizedBox(
              height: 50.0,
            ),    
            Align(
              alignment: const AlignmentDirectional(-0.85, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Susu',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              children:[
                const SizedBox(
                  width: 30.0,
                ),
             RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'GHS 5,250.00',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
              ],
            ),
            const SizedBox(
              height: 25.0,
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
        child: Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
              Row(
                children:[
                const SizedBox(width: 20.0,),
                SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child:
                Image.asset('assets/bulb.png', fit: BoxFit.cover,
                ),
                ),
                const SizedBox(width: 15.0,),
                Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3.0,),
                      child:
                Text(' Funding Progress',
                style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    ),),
                    ),
                  ],
                ),
                ],
              ),
              const SizedBox(height: 30.0,),
              Row(
                        children: [
                          const SizedBox(
                            width: 35.0,
                          ),
                          Image.asset(
                            'assets/ArrowCircleDownLeft.png',
                            height: 30.0,
                            width: 30.0,
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Saved',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '11/7/2022',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 160.0,
                          ),
                          Text(
                            'GHS 0.50',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2.0,
                        color: Colors.black12,
                        height: 30,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 35.0,
                          ),
                          Image.asset(
                            'assets/ArrowCircleDownLeft.png',
                            height: 30.0,
                            width: 30.0,
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Saved',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '11/7/2022',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 160.0,
                          ),
                          Text(
                            'GHS 0.50',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2.0,
                        color: Colors.black12,
                        height: 30,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 35.0,
                          ),
                          Image.asset(
                            'assets/ArrowCircleDownLeft.png',
                            height: 30.0,
                            width: 30.0,
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Saved',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '11/7/2022',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 160.0,
                          ),
                          Text(
                            'GHS 0.70',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2.0,
                        color: Colors.black12,
                        height: 30,
                        indent: 20,
                        endIndent: 20,
                      ),
                      const SizedBox(height: 20.0,),
                      Row(
                children:[
                  const SizedBox(width: 40.0,),
              MaterialButton(
                 onPressed: () {
                  
                 },
                 color: const Color.fromARGB(249, 40, 68, 194),
                  textColor: Colors.white,
                  minWidth: 5,
                  padding: const EdgeInsets.all(2.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                  Icons.add_rounded,
                  size: 25,
                    ),
                      ),
              const SizedBox(width: 5.0,),
              Text('End auto renewal',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        ),   
                  ),
              )
                ]
              ),
              const SizedBox(height: 20.0,),
              Row(
                children:[
                  const SizedBox(width: 40.0,),
              MaterialButton(
                 onPressed: () {
                 },
                 color: const Color.fromARGB(249, 40, 68, 194),
                  textColor: Colors.white,
                  minWidth: 5,
                  padding: const EdgeInsets.all(2.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                  Icons.add_rounded,
                  size: 25,
                    ),
                      ),
              const SizedBox(width: 5.0,),
              Text('Withdraw',
              style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        ),   
                  ),
              )
                ]
              )
      ],
    ),
      ),
        ],
      ),
      ),
    );
  }

}
