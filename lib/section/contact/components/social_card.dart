import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    super.key,
    required this.iconsSrc,
    required this.name,
    required this.color,
    required this.onPressed,
  });
  final String iconsSrc, name;
  final Color color;
  final Function() onPressed;
  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.onPressed,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow]),
          child: Row(
            children: [
              Image.asset(
                widget.iconsSrc,
                height: 80,
                width: 80,
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Text(widget.name)
            ],
          ),
        ),
      ),
    );
  }
}