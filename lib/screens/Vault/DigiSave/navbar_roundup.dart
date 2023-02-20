import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:instacash/screens/Loan/loan_current.dart';
import 'package:instacash/screens/Profile/profile_home.dart';
import 'package:instacash/screens/Vault/DigiSave/round_up.dart';
import 'package:instacash/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navbar2 extends StatefulWidget {
  const Navbar2({Key? key}) : super(key: key);
  @override
  State<Navbar2> createState() => _Navbar2State();
}

class _Navbar2State extends State<Navbar2> {
 final PersistentTabController _controller = PersistentTabController(initialIndex: 1);

  List<Widget> _buildScreens() {
    return [
      const Homepage(),
      const RoundUp(),
      const LoanTabScreen(),
      const ProfileHome(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        padding: const NavBarPadding.all(6.0),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, 
        handleAndroidBackButtonPress: true, 
        resizeToAvoidBottomInset: true, 
        stateManagement: true, 
        hideNavigationBarWhenKeyboardShows: true, 
        decoration: NavBarDecoration(
          //borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
          border: Border.all(color: Colors.grey, width: 1.0),
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( 
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( 
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6, 
    );
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                inactiveIcon: const Icon(PhosphorIcons.house),
                icon: const Icon(PhosphorIcons.house_fill),
                title: ('Home'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 12),
            ),
            PersistentBottomNavBarItem(
              inactiveIcon: const Icon(Icons.savings_outlined) ,
                icon: const Icon(Icons.savings_rounded),
                title: ('Savings'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 12),
            ),
            PersistentBottomNavBarItem(
                inactiveIcon:const Icon(PhosphorIcons.money) ,
                icon: const Icon(PhosphorIcons.money_fill),
                title: ('Loan'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 14),
            ),  
            PersistentBottomNavBarItem(
                inactiveIcon: const Icon(CupertinoIcons.person) ,
                icon: const Icon(CupertinoIcons.person_fill),
                title: ('Profile'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 14),
            ),
        ];
    }
}
//
