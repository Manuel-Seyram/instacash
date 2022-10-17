import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Customer%20Onboarding/onboarding/slider_page1.dart';
import 'package:instacash/screens/Customer%20Onboarding/onboarding/slider_page2.dart';
import 'package:instacash/screens/Customer%20Onboarding/onboarding/slider_page3.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    const SliderPage1(),
    const SliderPage2(),
    const SliderPage3(),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.blue.shade900
                                : Colors.white));
                  })),
              const SizedBox(
                height: 70,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 80.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    color: Colors.black,
                    height: 50.0,
                    minWidth: 120,
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  MaterialButton(
                      onPressed: (() => {}),
                      color: Colors.white,
                      height: 50.0,
                      minWidth: 120,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        'Register',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                  //const SizedBox(height: 50.0,)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
