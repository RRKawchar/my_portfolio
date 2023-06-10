import 'package:flutter/material.dart';
import 'package:my_portfolio/components/default_button.dart';
import 'package:my_portfolio/components/section_title.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/section/contact/components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xFFE8F0F9),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bg_img_2.png'))),
      child: Column(
        children: const [
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          SectionTitle(
              title: "Contact Me",
              subTitle: "For project inquiry and information",
              color: Color(0xFF07E24A)),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Row(
            children: [
              SocialCard(
                color: const Color(0xFFD9FFFC),
                iconsSrc: "assets/images/skype.png",
                name: "Riyazur Rohman Kawchar",
                onPressed: () {},
              ),
              SocialCard(
                color: const Color(0xFFE4FFC7),
                iconsSrc: "assets/images/whatsapp.png",
                name: "Riyazur Rohman Kawchar",
                onPressed: () {},
              ),
              SocialCard(
                color: const Color(0xFFE8F0F9),
                iconsSrc: "assets/images/messanger.png",
                name: "Riyazur Rohman Kawchar",
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          Form(
              child: Wrap(
            spacing: kDefaultPadding * 2.5,
            runSpacing: kDefaultPadding * 1.5,
            children: [
              SizedBox(
                width: 470,
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      hintText: "Enter your name", labelText: "Your Name"),
                ),
              ),
              SizedBox(
                width: 470,
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      hintText: "Enter your Email Address",
                      labelText: "Email Address"),
                ),
              ),
              SizedBox(
                width: 470,
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      hintText: "Select Your Project Type",
                      labelText: "Project Type"),
                ),
              ),
              SizedBox(
                width: 470,
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      hintText: "Select Your Project Budget",
                      labelText: "Project Budget"),
                ),
              ),
              SizedBox(
                // height: 300,
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      hintText: "Select Your Project Budget",
                      labelText: "Project Budget"),
                ),
              ),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              Center(
                child: FittedBox(
                  child: DefaultButton(
                    imageSrc: 'assets/images/contact_icon.png',
                    text: 'contact me!',
                    onPress: () {},
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
