import 'package:flutter/material.dart';
import 'package:instacash/screens/Customer%20Onboarding/onboarding/onboarding_screen.dart';
import 'package:show_up_animation/show_up_animation.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  int splashtime = 7;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.of(context).push(_createRoute());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(3, 22, 58, 2.0),
        body: Column(
          children: [
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 200,
                ),
                Row(children: [
                  const SizedBox(
                    width: 60.0,
                  ),

                  ShowUpAnimation(
                    delayStart: const Duration(seconds: 2),
                    //curve: Curves.bounceIn,
                    animationDuration: const Duration(seconds: 2),
                    direction: Direction.vertical,
                    offset: 3.0,
                    child: Text(
                      "insta",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 42.0)),
                    ),
                  ),

                  ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    animationDuration: const Duration(seconds: 2),
                    child: const Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),

                  ShowUpAnimation(
                    delayStart: const Duration(seconds: 2),
                    //curve: Curves.bounceIn,
                    animationDuration: const Duration(seconds: 2),
                    direction: Direction.vertical,
                    offset: 3.0,
                    child: Text(
                      "ash",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 42.0)),
                    ),
                  ),
                  //const SizedBox(width: 120,),
                ]),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Center(
              child: ShowUpAnimation(
                delayStart: const Duration(seconds: 4),
                curve: Curves.bounceIn,
                animationDuration: const Duration(seconds: 2),
                direction: Direction.vertical,
                offset: 3.0,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 14.0)),
                        text: " Cash when you need it \n "),
                    TextSpan(
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 14.0)),
                        text: "    Where you need it"),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 350,
            ),
            Center(
              child: ShowUpAnimation(
                delayStart: const Duration(seconds: 3),
                curve: Curves.bounceIn,
                animationDuration: const Duration(seconds: 2),
                direction: Direction.vertical,
                offset: 3.0,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 14.0)),
                        text: "Powered "),
                    TextSpan(
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                        text: "by NewVi"),
                  ]),
                ),
              ),
            )
          ],
        ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Landing(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
