import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.onPress,
  });
  final String imageSrc, text;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
            backgroundColor: const Color(0xFFE8F0F9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        onPressed: onPress,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Text(text)
          ],
        ));
  }
}