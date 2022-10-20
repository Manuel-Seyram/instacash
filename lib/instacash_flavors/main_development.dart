import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/front_card.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/front_card_verify.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/instacash_basic_information.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/otp.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/proof_of_identity.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/selfie.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/selfie_onboarding.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/selfie_verify.dart';
import '../screens/Customer Onboarding/login/login.dart';
import '../screens/Customer Onboarding/onboarding/onboarding_screen.dart';
import '../screens/Customer Onboarding/sign_up/phoneNumber_field.dart';
import '../screens/Customer Onboarding/splash screen/splash_screen.dart';
// ignore: depend_on_referenced_packages


void main() {
  FlavorConfig(
    name: "development",
    color: Colors.grey,
    location: BannerLocation.topEnd,
  );

  return runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: const ColorScheme.light(
        primary:Color.fromARGB(249, 40, 68, 194)
      ),
      primaryColor: const Color.fromARGB(249, 40, 68, 194),
      focusColor: const Color.fromARGB(249, 40, 68, 194)
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': ((context) => const SplashScreen()),
        '/onboarding':(context) => const Landing(),
        '/phonefield':(context) => const PhoneField(),
        '/otp':(context) => const Otp(),
        '/basicinformation':(context) => const BasicInformation(),
        '/login':(context) => const Login(),
        '/idproof':(context) => const Proof(),
        '/frontcard':(context) => const Frontcard(),
        '/verifyfront':(context) => const Frontcard2(),
        '/selfie':(context) => const Selfie(),
        '/selfiecard':(context) => const Selfiecard(),
        '/selfieverify':(context) => const Selfieverify(),
      },
  ));
}
