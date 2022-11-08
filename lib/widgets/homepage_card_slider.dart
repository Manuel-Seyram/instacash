import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instacash/widgets/card_loan.dart';
import 'package:instacash/widgets/card_savings.dart';
import 'package:instacash/widgets/vault_card.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({super.key});

  @override
  State<CardSlider> createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  // ignore: unused_field
  int _currentIndex = 0;

  List cardList = [
    const CardLoan(),
    const CardSavings(),
    const CardVault(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: const Alignment(0.0, -0.5),
      child: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.2,
        child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.1,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 950),
            autoPlayCurve: Curves.easeInOut,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 1.3,
            onPageChanged: (index, reason) {
              setState(() {

                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Align(
                alignment: const Alignment(0, -0.5),
                child: SizedBox(
                    width: size.width * 1.0,
                    height: size.height * 0.3,
                    child: card),
              );
            });
          }).toList(),
        ),
      ),
    );
  }
}
