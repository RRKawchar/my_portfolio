import 'package:flutter/material.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(title:"My Strong Arenas" ,subTitle: "Service Offerings",color: Color(0xFFFF0000),)
        ],
      ),
    );
  }
}


