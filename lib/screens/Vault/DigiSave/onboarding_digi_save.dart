import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/DigiSave/navbar_roundup.dart';
import 'package:instacash/screens/Vault/DigiSave/onboarding_page_2.dart';
import 'package:instacash/screens/Vault/DigiSave/onboarding_page1.dart';
import 'package:instacash/screens/Vault/DigiSave/onboarding_page_3.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class DigiSaveOnboarding extends StatefulWidget {
  const DigiSaveOnboarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DigiSaveOnboardingState createState() => _DigiSaveOnboardingState();
}

class _DigiSaveOnboardingState extends State<DigiSaveOnboarding> {
  int _currentPage = 0;
  final PageController _controller = PageController();
   List colors = [Colors.blue.shade800, const Color.fromRGBO(96,	181,	39, 0.2), Colors.blue.shade800];
  final List<Widget> _pages = [
    const OnboardingPage1(),
    const OnboardingPage2(),
    const OnboardingPage3(),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 250, 100),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 670),
              Container(
                  decoration: BoxDecoration(
                      color: colors[ _currentPage]
                          ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30.0,
                      ),
                      Row(
                          children:
                              List<Widget>.generate(_pages.length, (int index) {
                        return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 7,
                            width: (index == _currentPage) ? 40 : 7,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 40),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: (index == _currentPage)
                                    ? Colors.white
                                    : Colors.white));
                      })),
                      const SizedBox(
                        width: 200.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_currentPage == _pages.length - 1) {
              
                      PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const Navbar2 (),
                              withNavBar: false,
                            );
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
                        },
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(
                  width: 100.0,
                  height: 50.0,
                ),
                child:
                Center(
                  child:
              Text(
                  _currentPage == _pages.length - 1 ? "Start Saving" : "Next",
                  style:GoogleFonts.poppins(textStyle: const TextStyle(color:   Colors.white, fontSize: 15.0, fontWeight: FontWeight.w500 ))),),),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
