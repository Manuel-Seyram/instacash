import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/DigiSave/onboarding_page_2.dart';
import 'package:instacash/screens/Vault/DigiSave/onboarding_page1.dart';
import 'package:instacash/screens/Vault/DigiSave/onboarding_page_3.dart';
import 'package:instacash/screens/Vault/DigiSave/round_up.dart';
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
                      color: Color.fromARGB(249, 40, 68, 194),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 280.0,
                ),
              ],
            ),
            const SizedBox(height: 520),
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
                                : Colors.grey));
                  })),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 32.0,
                  ),
                  MaterialButton(
                      onPressed: () {
                           PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const RoundUp(),
                              withNavBar: true,
                            );     
                          },
                      color: const Color.fromARGB(249, 40, 68, 194),
                      height: 40.0,
                      minWidth: 350,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text(
                        'Start saving',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
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
