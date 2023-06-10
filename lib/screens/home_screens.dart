import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/section/about/about_section.dart';
import 'package:my_portfolio/section/contact/contact_section.dart';
import 'package:my_portfolio/section/feedback/feedback_section.dart';
import 'package:my_portfolio/section/recent_work/recent_work_section.dart';
import 'package:my_portfolio/section/service/service_section.dart';
import 'package:my_portfolio/section/top_section/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedBackSection(),
            SizedBox(height: kDefaultPadding,),
            ContactSection(),
            SizedBox(
              height: 500,
            )
          ],
        ),
      ),
    );
  }
}
