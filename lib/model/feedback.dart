import 'package:flutter/material.dart';

class FeedBack{

  final String name,review,userPic;
  final int id;
  final Color color;
 FeedBack({ required this.name,required this.review,required this.userPic,required this.id,required this.color});
}

List<FeedBack> feedBack=[
  FeedBack(
      name: 'Riyazur Rohman Kawchar',
      review: review,
      userPic: 'assets/images/peaple.jpeg',
      id: 1,
      color:const Color(0xFFFFF3DD),
  ),
  FeedBack(
    name: 'Riyazur Rohman Kawchar',
    review: review,
    userPic: 'assets/images/peaple.jpeg',
    id: 1,
    color:const Color(0xFFD9FFFC),
  ),
  FeedBack(
    name: 'Riyazur Rohman Kawchar',
    review: review,
    userPic: 'assets/images/peaple.jpeg',
    id: 1,
    color:const Color(0xFFFFE0E0),
  ),

];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt'
    ' ut labore et dolore mag aliqua enim ad minim veniam.';