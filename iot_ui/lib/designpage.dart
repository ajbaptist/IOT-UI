import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

Color primarycolor = Color(0xFF26282B);
Color activecolor1 = Color(0xFF26282B);
Color activecolor2 = Color(0xFF26282B);
Color lightcolor = Color(0xFFE6EEFF);

class Designpage extends StatefulWidget {
  @override
  _DesignpageState createState() => _DesignpageState();
}

class _DesignpageState extends State<Designpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightcolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClayBox(
                    hight: 50,
                    width: 50,
                    myrad: 20,
                    myicon: Icon(
                      Icons.lightbulb_outline,
                      size: 40,
                    ),
                  ),
                  Text(
                    'MY ROOM CONTROL',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal),
                  ),
                  ClayBox(
                    hight: 50,
                    width: 50,
                    myrad: 20,
                    myicon: Icon(
                      Icons.lightbulb,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: ClayBox(
                hight: 90,
                myrad: 20,
                width: MediaQuery.of(context).size.width * 0.8,
                myicon: ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text('FOOD HERE'),
                  subtitle: Text('GO AND TAKE YOUR FOOD'),
                ),
              ),
            ),
            ClayBox(
              hight: 200,
              width: 200,
              myrad: 200,
              myicon: SleekCircularSlider(
                onChange: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
