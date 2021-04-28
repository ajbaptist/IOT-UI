import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class ClayBox extends StatelessWidget {
  final Widget myicon;
  final int hight;
  final double width;
  final double myrad;
  ClayBox({this.myicon, this.hight, this.width, this.myrad});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ClayContainer(
        height: hight.toDouble(),
        width: width,
        borderRadius: myrad,
        child: Padding(padding: EdgeInsets.all(10), child: myicon),
      ),
    );
  }
}
