import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/model/recent_work.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    super.key, required this.index, required this.onTap,
  });
  final int index;
  final Function()? onTap;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [if(isHover) kDefaultCardShadow]
        ),
        child: Row(
          children: [
            Image.asset(recentWork[widget.index].image),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentWork[widget.index].category.toUpperCase()),
                  const SizedBox(height: kDefaultPadding/2,),
                  Text(recentWork[widget.index].title,style: Theme.of(context).textTheme.displayMedium!.copyWith(height: 1.5),),
                  const SizedBox(height: kDefaultPadding,),
                  const Text("View Details",style: TextStyle(decoration: TextDecoration.underline),)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}