import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/section/top_section/components/logo_and_blure_box.dart';
import 'package:my_portfolio/section/top_section/components/menu.dart';
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


