import 'package:flutter/material.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/model/feedback.dart';
import 'package:my_portfolio/section/feedback/components/feedback_card.dart';

class FeedBackSection extends StatelessWidget {
  const FeedBackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          const SectionTitle(
              title: 'Feedback Receive',
              subTitle: "Client's testimonials that inspired me a lot",
              color: Color(0xFF00B1FF)),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  feedBack.length,
                  (index) => FeedBackCard(
                        index: index,
                      )))
        ],
      ),
    );
  }
}
