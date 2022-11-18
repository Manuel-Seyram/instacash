import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacash/screens/Loan/bank_loan_accept_screen.dart';
import 'package:instacash/screens/Loan/card_loan_accept_screen.dart';
import 'package:instacash/screens/Loan/choose_loan_amount.dart';
import 'package:instacash/screens/Loan/delivery_method.dart';
import 'package:instacash/screens/Loan/momo_loan_accept_screen.dart';
import 'package:instacash/screens/Vault/DigiSave/digi_save_deposit_method.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/choose_deposit_method.dart';
import 'package:instacash/screens/Vault/Lump%20Sum/choose_funding_amount_lump_sum.dart';
import 'package:instacash/screens/Vault/Monthly/monthly.dart';
import 'package:instacash/screens/Vault/widgets/pop_up_lump_sum_summary_momo.dart';
import 'package:instacash/screens/Vault/widgets/pop_up_summary_lumpsum.dart';
import 'package:instacash/widgets/bottom_navbar.dart';
import 'package:instacash/widgets/pop_up_mode_of_payment.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

//HERE YoU WILL FIND THE BUTTONS USED FOR INSTACASH APP

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/otp');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Register',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/basicinformation');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/bankinformation');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

// ignore: must_be_immutable
class LoginButton extends StatelessWidget {
  LoginButton({super.key});

  bool phoneFieldEmpty = true;

  bool isLoading = false;
  bool isButtondisabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        enableFeedback: isButtondisabled ? phoneFieldEmpty : !phoneFieldEmpty,
        onPressed: () {
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'login',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

//FORGOT PASSSWORD BUTTONS
class Forgotpassword1Button extends StatelessWidget {
  const Forgotpassword1Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgotpassword2');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ConfirmButton2 extends StatelessWidget {
  const ConfirmButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgotpassword3');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class ConfirmButton3 extends StatelessWidget {
  const ConfirmButton3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

//bank account information button

class BankAccountInformationButton extends StatelessWidget {
  const BankAccountInformationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/idproof');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

//LOAN BUTTONS
class LoanInformationButton extends StatelessWidget {
  const LoanInformationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const LoanAmount(),
                              withNavBar: false,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 300,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanAmountButton extends StatelessWidget {
  const LoanAmountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const DeliveryMethod(),
                              withNavBar: false,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Next',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanBankSaveButton extends StatelessWidget {
  const LoanBankSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 80,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Save',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanCardSaveButton extends StatelessWidget {
  const LoanCardSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 80,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Save',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanMomoSaveButton extends StatelessWidget {
  const LoanMomoSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 80,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Save',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanCardContinueButton extends StatelessWidget {
  const LoanCardContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const CardReceipt(),
                              withNavBar: false,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanMomoContinueButton extends StatelessWidget {
  const LoanMomoContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen:const MomoReceipt(),
                              withNavBar: false,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanBankContinueButton extends StatelessWidget {
  const LoanBankContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen:const BanKReceipt(),
                              withNavBar: false,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanBankReceiptButton extends StatelessWidget {
  const LoanBankReceiptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
        context,
        screen:const Navbar(),
        withNavBar: true,
    );

        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Submit',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanCardReceiptButton extends StatelessWidget {
  const LoanCardReceiptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
         Navigator.of(context).pushAndRemoveUntil(
        CupertinoPageRoute(
          builder: (BuildContext context) {
            return const Navbar();
          },
        ),
        (_) => false,
      );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Submit',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LoanMomoReceiptButton extends StatelessWidget {
  const LoanMomoReceiptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const Navbar(),
                              withNavBar: true,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Submit',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

//REPAYMENT LOAN
class RepayButton extends StatelessWidget {
  const RepayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                    child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 500,
                  child: const PopPayment(),
                ));
              });
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Repay Loan',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class RepayConfirmButton extends StatelessWidget {
  const RepayConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '');
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}




//Vault Section Buttons
class RoundUpAgreeButton extends StatelessWidget {
  const RoundUpAgreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
           PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const DeliveryMethodDigiSave(),
                              withNavBar: true,
                            );
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'I agree to the terms',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}


class PayCheckAgreeButton extends StatelessWidget {
  const PayCheckAgreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const Monthly(),
                              withNavBar: true,
                            );
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'I agree to the terms',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LumpSumAgreeButton extends StatelessWidget {
  const LumpSumAgreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const LumpSumFunding(),
                              withNavBar: true,
                            );
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'I agree to the terms',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LumpSumContinueButton extends StatelessWidget {
  const LumpSumContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
          PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const DeliveryMethodVault(),
                              withNavBar: true,
                            );
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LumpSumBankContinueButton extends StatelessWidget {
  const LumpSumBankContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
          showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                    child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 550,
                  child: const PopSummary(),
                ));
              });
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}


class LumpSumMomoContinueButton extends StatelessWidget {
  const LumpSumMomoContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
          showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoPopupSurface(
                    child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 550,
                  child: const PopSummaryMomo(),
                ));
              });
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LumpSumBankConfirmButton extends StatelessWidget {
  const LumpSumBankConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class LumpSumMomoConfirmButton extends StatelessWidget {
  const LumpSumMomoConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Confirm',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}


class DigiSaveBankContinueButton extends StatelessWidget {
  const DigiSaveBankContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}

class DigiSaveMomoContinueButton extends StatelessWidget {
  const DigiSaveMomoContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          
        },
        color: const Color.fromARGB(249, 40, 68, 194),
        height: 40.0,
        minWidth: 350,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}