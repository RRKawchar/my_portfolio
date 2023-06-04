import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class MyOutLineButton extends StatelessWidget {
  const MyOutLineButton({
    super.key, required this.imageSrc, required this.text, required this.press,
  });
  final String imageSrc,text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(

        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xFFEDEDED)),
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding*2.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50 ),

            )
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(imageSrc,height: 40,),
            const SizedBox(width: kDefaultPadding,),
            Text(text)
          ],
        ),
      ),

    );
  }
}