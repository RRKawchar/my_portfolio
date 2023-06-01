import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
     constraints: const BoxConstraints(
       maxHeight: 900,
       minHeight: 700,
     ),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,

        child: Column(
          children: [
            Image.asset('assets/images/Logo.png'),
            glassContent(size: size)
          ],
        ),
      ),
    );
  }
}

class glassContent extends StatelessWidget {
  const glassContent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110,
        maxHeight: size.height*0.7,
      ),
        color: Colors.black
    );
  }
}
