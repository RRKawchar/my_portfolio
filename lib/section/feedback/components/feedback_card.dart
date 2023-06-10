import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/model/feedback.dart';

class FeedBackCard extends StatefulWidget {
  const FeedBackCard({
    super.key, required this.index,
  });
  final int index;

  @override
  State<FeedBackCard> createState() => _FeedBackCardState();
}

class _FeedBackCardState extends State<FeedBackCard> {
  Duration duration=const Duration(milliseconds: 200);
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      hoverColor: Colors.transparent,
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.only(top: kDefaultPadding*3),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedBack[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0,-55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 10),
                    boxShadow: [if(!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                        image: AssetImage(feedBack[0].userPic))),
              ),
            ),
            Text(
              feedBack[widget.index].review,
              style: const TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5),
            ),
            const SizedBox(height: kDefaultPadding *2,),
            const Text('Ronald Thomson',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}