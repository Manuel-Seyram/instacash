import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50.0,),
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
                      Icons.close_rounded,
                      size: 25,
                      color: Color.fromARGB(249, 40, 68, 194),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 280.0,
                ),
              ],
            ),
            Center(
              child:
              Column(
                children:[
                SizedBox(
                  height: 450.0, 
                child: LottieBuilder.asset('assets/Animations/coming-soon-loader.json')
                ),
                SizedBox(
                  height:  300.0,
                  child: LottieBuilder.asset('assets/Animations/coming-soon.json')
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
