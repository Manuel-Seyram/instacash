import 'dart:io';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';

class Selfieverify extends StatefulWidget {
  const Selfieverify({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelfieverifyState createState() => _SelfieverifyState();
}

class _SelfieverifyState extends State<Selfieverify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 60.0,
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
                    size: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                width: 80.0,
              ),
              Align(
                alignment: const AlignmentDirectional(-0.5, 5.0),
                child: Text(
                  'Take a selfie',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Container(
            height: 270,
            width: 353,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black54, width: 1.0)),
                child: imgCamera != null ? Image.file(imgCamera!, fit: BoxFit.fill,): Container(),
          ),
          const SizedBox(
            height: 130.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              'Make sure your face is visible. if you are',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              'wearing glasses, make sure your eyes are',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              'also visible',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 70.0,
          ),
          Row(
            children: [
              const SizedBox(width: 52.0,),
                  const SizedBox(width: 10.0,),
              MaterialButton(
                   onPressed: (() => {openCamera()}),
                    color: Colors.white,
                    height: 50.0,
                    minWidth: 120,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                       ),
                    child: Text(
                      'Take Photo',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color:  Color.fromARGB(249, 40, 68, 194),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0,),
                  MaterialButton(
                   onPressed: (() => {Navigator.pushNamed(context, '/onboarding')}),
                    color: const Color.fromARGB(249, 40, 68, 194),
                    height: 50.0,
                    minWidth: 120,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
            ],
          )
        ],
      ),
    );
  }

  //Image picker for card
  File? imgCamera;

  final imgPicker = ImagePicker();

  Future openCamera() async {
    // ignore: unused_local_variable
    var imgCamera = await imgPicker.pickImage(source: ImageSource.camera);
    if (imgCamera == null) return;

    final imageTemporary = File(imgCamera.path);
    setState(() => this.imgCamera = imageTemporary);
  }
}
