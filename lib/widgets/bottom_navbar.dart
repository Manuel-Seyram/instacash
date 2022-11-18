import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:instacash/screens/Vault/vault.dart';
import 'package:instacash/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/loan_application_form.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
 final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const Homepage(),
      const SavingsMethod(),
      const Homepage(),
      const LoanApplication(),
      const LoanApplication(),
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
              inactiveIcon: const Icon(PhosphorIcons.wallet) ,
                icon: const Icon(PhosphorIcons.wallet_fill),
                title: ('Vault'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 12),
            ),
            PersistentBottomNavBarItem(
                inactiveIcon: const Icon(PhosphorIcons.activity) ,
                icon: const Icon(PhosphorIcons.activity_fill),
                title: ('Spendings'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 14),
            ),
            PersistentBottomNavBarItem(
                inactiveIcon:const Icon(PhosphorIcons.credit_card) ,
                icon: const Icon(PhosphorIcons.credit_card_fill),
                title: ('Loan'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 14),
            ),  
            PersistentBottomNavBarItem(
                inactiveIcon: const Icon(Icons.person) ,
                icon: const Icon(Icons.person),
                title: ('Profile'),
                activeColorPrimary: const Color.fromARGB(249, 40, 68, 194),
                inactiveColorPrimary: Colors.black54,
                textStyle: TextStyle(fontStyle: GoogleFonts.poppins().fontStyle, fontWeight: FontWeight.w500, fontSize: 14),
            ),
        ];
    }
}
//
