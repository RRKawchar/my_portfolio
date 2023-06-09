import 'package:flutter/material.dart';

class Service{
  
  
  final int id;
  final String title,image;
  final Color color;

  Service({required this.id,required this.title,required this.image,required this.color});
}

List<Service> service=[

  Service(
      id: 1,
      title: 'Software development',
      image: 'assets/images/software.png',
      color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: 'Web Design',
    image: 'assets/images/desktop.png',
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: 'UI Design',
    image: 'assets/images/ui.png',
    color: const  Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: 'Graphic Design',
    image: 'assets/images/graphic.png',
    color:const Color(0xFFFFE0E0),
  ),
];