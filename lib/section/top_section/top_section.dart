import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/section/top_section/components/glass_content.dart';
import 'package:my_portfolio/section/top_section/components/logo_and_blure_box.dart';
import 'package:my_portfolio/section/top_section/components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxHeight: 900,
        minHeight: 700,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlureBox(size: size),
            const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            const Positioned(
                bottom: 0,
                right: 0,
                child: Menu()),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int selectedIndex=0;
  int hoverIndex=0;
  List<String> menuItem=[
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Row(
        children:List.generate(menuItem.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) => Container(
      constraints: BoxConstraints(
        maxWidth: 122
      ),
      width: 100,
      child: Stack(
        children: [
          Text(menuItem[index]),
        ],
      ));
}
