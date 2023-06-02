import 'package:flutter/material.dart';
import 'package:my_portfolio/section/top_section/components/glass_content.dart';

class LogoAndBlureBox extends StatelessWidget {
  const LogoAndBlureBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/Logo.png'),
        const Spacer(),
        GlassContent(size: size),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}