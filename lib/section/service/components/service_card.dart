import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/model/service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    super.key, required this.index,
  });
  final int index;
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {

  bool isHover=false;
  Duration duration=const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding*2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
            color:service[0].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if(isHover) kDefaultShadow]

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration:duration,
              padding: const EdgeInsets.all(kDefaultPadding*1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0,20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1)
                    ),
                  ]
              ),
              child: Image.asset(service[widget.index].image,fit: BoxFit.fill,),

            ),
            const SizedBox(height: kDefaultPadding,),
            Text(service[widget.index].title,style: const TextStyle(
                fontSize: 22
            ),)
          ],
        ),
      ),
    );
  }
}
