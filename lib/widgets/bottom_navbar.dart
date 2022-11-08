import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:instacash/screens/Digisave/digisave_goal_new_user.dart';
import 'package:instacash/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/loan_application_form.dart';


class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;
  final screens = [
   const Homepage(),
   const Homepage(),
   const DigiSaveGoal(),
   const Homepage(),
   const LoanApplication(),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed, // Fixed 
  backgroundColor: Colors.white, // <-- This works for fixed
  selectedItemColor: const Color.fromARGB(249, 40, 68, 194),
  unselectedItemColor: Colors.black54,
  currentIndex: index,
  iconSize: 24,
  unselectedLabelStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500),
                    ),
  selectedLabelStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
  onTap: (index) => setState(() => this.index = index),
  items: const [
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.house),
      label: 'Home',
      activeIcon: Icon(PhosphorIcons.house_fill),
    ),
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.wallet),
      label: 'Vault',
      activeIcon: Icon(PhosphorIcons.wallet_fill),
    ),
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.credit_card),
      label: 'DigiSafe',
      activeIcon: Icon(PhosphorIcons.credit_card_fill),
    ),
    BottomNavigationBarItem(
      icon: Icon(PhosphorIcons.activity),
      label: 'Spendings',
      activeIcon: Icon(PhosphorIcons.activity_fill),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.contacts),
      label: 'Profile',
      activeIcon: Icon(Icons.contacts)
    ),
  ],
      )
    );
  }
}

















//