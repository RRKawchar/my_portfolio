import 'package:flutter/material.dart';

class AutoScrollText extends StatefulWidget {
  final double height;
  final List<Widget> items;

  AutoScrollText({super.key, this.height = 24.0, required this.items});
  @override
  State<StatefulWidget> createState() => _AutoScrollTextState();
}

class _AutoScrollTextState extends State<AutoScrollText>
    with SingleTickerProviderStateMixin {
  ScrollController scrollCtrl = ScrollController();
  late AnimationController animateCtrl;

  @override
  void dispose() {
    animateCtrl.dispose();
    super.dispose();
  }

  @override
  initState() {
    double offset = 0.0;
    super.initState();
    animateCtrl =
    AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..addListener(() {
        if (animateCtrl.isCompleted){
          animateCtrl.reset();
          animateCtrl.forward(from: 0.0);
        }
        offset += 1.0;
        if (offset - 1 > scrollCtrl.offset) {
          offset = 0.0;
        }
        setState(() {
          scrollCtrl.jumpTo(offset);
        });
      });
    animateCtrl.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.items.isEmpty) {
      return const Center(child: CircularProgressIndicator(),);
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      //color: Colors.blueGrey.shade800,
      height: widget.height,
      padding: const EdgeInsets.only(top: 4.0,bottom: 2.0),
      child: Center(
        child: ListView(
          controller: scrollCtrl,
          scrollDirection: Axis.horizontal,
          children: widget.items,
        ),
      ),
    );
  }
}