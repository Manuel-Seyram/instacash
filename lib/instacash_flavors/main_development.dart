import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:instacash/widgets/instacash_button.dart';

import '../screens/Customer Onboarding/onboarding/onboarding_screen.dart';
import '../screens/Customer Onboarding/splash screen/splash_screen.dart';
// ignore: depend_on_referenced_packages


void main() {
  FlavorConfig(
    name: "development",
    color: Colors.grey,
    location: BannerLocation.topEnd,
  );

  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': ((context) => const SplashScreen()),
        '/onboarding':(context) => const Landing(),
        '/login':(context) => const Login(),
      },
  ));
}
