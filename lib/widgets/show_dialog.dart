import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/widgets/onboarding_home1.dart';
import 'package:instacash/widgets/onboarding_home2.dart';
import 'package:instacash/widgets/onboarding_home3.dart';
import 'package:instacash/widgets/onboarding_home4.dart';


class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({super.key, required Stack content});

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  int _currentPage = 0;
  final PageController _controller = PageController();
  List colors = [
    Colors.blue.shade800,
    const Color.fromRGBO(96, 181, 39, 0.2),
    Colors.blue.shade800
  ];
  final List<Widget> _pages = [
    const MiniOnboarding1(),
    const MiniOnboarding2(),
    const MiniOnboarding3(),
    const MiniOnboarding4(),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(2),
        content: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Container(
              height: 280,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
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
                  const SizedBox(height: 90),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 15.0,
                          ),
                          Row(
                              children: List<Widget>.generate(_pages.length,
                                  (int index) {
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
                            width: 150.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_currentPage == _pages.length - 1) {
                                Navigator.pop(context);
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
                              child: Center(
                                child: Text(
                                    _currentPage == _pages.length - 1
                                        ? "Done"
                                        : "Next",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
