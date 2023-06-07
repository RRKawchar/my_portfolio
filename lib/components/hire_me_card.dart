import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_button.dart';
import 'package:my_portfolio/constants.dart';

class HireMecard extends StatelessWidget {
  const HireMecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding*2),
      constraints: const BoxConstraints(
          maxWidth: 11110
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [kDefaultShadow],
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Image.asset("assets/images/email.png",height: 80,width: 80,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(height: 80,child: VerticalDivider(),),
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Stated New Project",style: TextStyle(
                  fontSize: 42,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: kDefaultPadding/2,),
              Text("Get an estimate for the new project",style: TextStyle(fontWeight: FontWeight.w200),)
            ],
          )),
          DefaultButton(imageSrc: "assets/images/hand.png", text: 'Hire me!', onPress: (){

          })

        ],
      ),
    );
  }
}