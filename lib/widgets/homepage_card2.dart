import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instacash/widgets/card_loan2.dart';
import 'package:instacash/widgets/vault_card2.dart';

class CardSlider2 extends StatefulWidget {
  const CardSlider2({super.key});

  @override
  State<CardSlider2> createState() => _CardSlider2State();
}

class _CardSlider2State extends State<CardSlider2> {
  // ignore: unused_field
  int _currentIndex = 0;

  List cardList = [
    const CardLoan2(), 
    const CardVault2(), 
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
        width: size.width * 1.0,
        height: size.height * 0.25,
        child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.1,
            enlargeCenterPage: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 950),
            autoPlayCurve: Curves.easeInOut,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 1.0,
            onPageChanged: (index, reason) {
              setState(() {

                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                    width: size.width * 1.3,
                    height: size.height * 0.2,
                    child: card),
              );
            });
          }).toList(),
        ),
      ),
    );
  }
}
