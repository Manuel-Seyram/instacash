import 'package:flutter/material.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/bank_information.dart';
import 'package:instacash/screens/Customer%20Onboarding/forgot_password_1.dart';
import 'package:instacash/screens/Customer%20Onboarding/forgot_password_2.dart';
import 'package:instacash/screens/Customer%20Onboarding/forgot_password_3.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/front_card_verify.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/instacash_basic_information.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/otp.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/proof_of_identity.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/selfie_onboarding.dart';
import 'package:instacash/screens/Customer%20Onboarding/sign_up/selfie_verify.dart';
import 'package:instacash/screens/Vault/DigiSave/round_up.dart';
import 'package:instacash/screens/Vault/vault.dart';
import 'package:instacash/screens/Loan/bank_loan_accept_screen.dart';
import 'package:instacash/screens/Loan/card_loan_accept_screen.dart';
import 'package:instacash/screens/Loan/choose_loan_amount.dart';
import 'package:instacash/screens/Loan/delivery_method.dart';
import 'package:instacash/screens/Loan/momo_loan_accept_screen.dart';
import 'package:instacash/screens/Loan/select_bank.dart';
import 'package:instacash/screens/Loan/select_card.dart';
import 'package:instacash/screens/Loan/select_momo.dart';
import 'package:instacash/screens/Repayment%20Loan/repayment_loan.dart';
import 'package:instacash/screens/homepage.dart';
import 'package:instacash/screens/Loan/loan_application_form.dart';
import 'package:instacash/widgets/bottom_navbar.dart';
import 'package:instacash/widgets/bottom_navbar2.dart';
import '../screens/Customer Onboarding/login/login.dart';
import '../screens/Customer Onboarding/onboarding/onboarding_screen.dart';
import '../screens/Customer Onboarding/sign_up/phone_number_field.dart';
import '../screens/Customer Onboarding/splash screen/splash_screen.dart';


void main() {
   runApp(MaterialApp(
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
        '/verifyfront':(context) => const Frontcard2(),
        '/selfie':(context) => const Selfie(),
        '/selfieverify':(context) => const Selfieverify(),
        '/forgotpassword1':(context) => const Forgotpassword1(),
        '/forgotpassword2':(context) => const Forgotpassword2(),
        '/forgotpassword3':(context) => const Forgotpassword3(),
        '/bankinformation':(context) => const  BankInformation(),
        '/homepage':(context) => const Homepage(),
        '/navbar':(context) => const Navbar(),
        '/loanapplication':(context) => const LoanApplication(),
        '/loanamount':(context) => const LoanAmount(),
        '/loandeliverymethod':(context) => const DeliveryMethod(),
        '/selectbank':(context) =>  const SelectBank(),
        '/selectmomo':(context) =>  const SelectMomo(),
        '/selectcard':(context) => const SelectCard(),
        '/bankreceipt':(context) => const BanKReceipt(),
        '/cardreceipt':(context) => const CardReceipt(),
        '/momoreceipt':(context) => const MomoReceipt(),
        '/repayment':(context) => const Repayment(),
        '/savingsmethod':(context) => const SavingsMethod(),
        '/roundup':(context) => const RoundUp(),
        '/navbar3':(context) => const Navbar3(),
        
      },
  ));
}
