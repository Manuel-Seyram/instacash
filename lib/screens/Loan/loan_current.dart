import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/active_loan.dart';
import 'package:instacash/screens/Loan/past_loan.dart';

class LoanTabScreen extends StatefulWidget {
  const LoanTabScreen({super.key});

  @override
  State<LoanTabScreen> createState() => _LoanTabScreenState();
}

class _LoanTabScreenState extends State<LoanTabScreen> with TickerProviderStateMixin {
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
              alignment: const AlignmentDirectional(-0.8, 5.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'My Loan',
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
              text: 'Active Loan',
            ),
            Tab(
              text: 'Past Loan',
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
    const ActiveLoan(),
    const PastLoan(),
  ];

}
