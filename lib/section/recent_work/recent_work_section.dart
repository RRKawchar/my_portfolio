
import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_button.dart';
import 'package:my_portfolio/components/hire_me_card.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kDefaultPadding*6),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png")
        )
      ),
      child: Column(
        children: [
          Transform.translate(
              offset: const Offset(0, -80),
          child: const HireMecard()),
          const SectionTitle(title: "Recent Work", subTitle: "My Strong arena", color: Color(0xFFFFB100))
        ],
      ),
    );
  }
}

