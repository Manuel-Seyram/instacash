import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Vault/widgets/current_lumpsum.dart';
import 'package:instacash/screens/Vault/widgets/past_lumpsum_screen.dart';

class SelectLumpSum extends StatefulWidget {
  const SelectLumpSum({super.key});

  @override
  State<SelectLumpSum> createState() => _SelectLumpSumState();
}

class _SelectLumpSumState extends State<SelectLumpSum> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: _tabViewChildren.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 40, 68, 194),
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          const SizedBox(
            height: 70.0,
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
              height: 40.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.55, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'LumpSum Investment',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: const AlignmentDirectional(-0.8, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: '7 months left',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
             TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.white,
          labelStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
          tabs:  const [
            Tab(
              text: 'Current',
            ),
            Tab(
              text: 'Past',
            ),
          ],
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
        child: TabBarView(
          controller: _tabController,
          children: _tabViewChildren,
        ),
      ),
        ],
      ),
      ),
    );
  }
final _tabViewChildren = [
    const CurrentScreen(),
    const PastScreen(),
  ];

}
