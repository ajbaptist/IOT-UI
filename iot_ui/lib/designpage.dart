import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'claybox.dart';

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
    double _value = 0;
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
                    hight: 60,
                    width: 60,
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
                    hight: 60,
                    width: 60,
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
                onChange: (double value) {},
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'INVERTER LEVEL',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.teal,
                  fontSize: 20),
            ),
            Slider(
                value: _value,
                min: 0.0,
                max: 1.0,
                divisions: 5,
                label: _value.toString(),
                activeColor: Colors.teal,
                inactiveColor: Colors.white,
                onChanged: (myvalue) {
                  setState(() {
                    _value = myvalue;
                  });
                })
          ],
        ),
      ),
    );
  }
}
