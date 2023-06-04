import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_button.dart';
import 'package:my_portfolio/components/my_outline_button.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/section/about/components/about_section_text.dart';
import 'package:my_portfolio/section/about/components/about_text_with_sign.dart';
import 'package:my_portfolio/section/about/components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                ),
              ),
              ExperienceCard(
                numOfExp: "02",
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutLineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!!",
                press: () {},
              ),
              const SizedBox(height: kDefaultPadding * 1.5,),
              DefaultButton(
                imageSrc: 'assets/images/download.png',
                text: "Download CV",
                onPress: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}


