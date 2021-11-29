import 'package:flutter/material.dart';
import 'package:aftercode0/screens/home/composant/RectangleWidgets/RectangleWidget3.dart';
import 'composant/framewidget/FrameWidget.dart';
import 'package:aftercode0/screens/home/composant/RectangleWidgets/RectangleWidget1.dart';
import 'package:aftercode0/screens/home/composant/RectangleWidgets/RectangleWidget2.dart';


class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double left1=(MediaQuery.of(context).size.width)-((MediaQuery.of(context).size.width)-15);
    double left2=((MediaQuery.of(context).size.width)-((MediaQuery.of(context).size.width)-15))+((MediaQuery.of(context).size.width)/2-20)+10;
    return Material(child: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
    return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
    height: 2267.0,
    child: Stack(children: [
    Container(
      width: constraints.maxWidth,
      child: Container(
      width:  MediaQuery.of(context).size.width,
      height: 2267.0,
      child: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      overflow: Overflow.visible,
      children: [
      ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
      color: Color.fromARGB(150, 58, 0, 150),
      ),
      ),
      /*Positioned(
            left: 0.0,
            top: 0.0,
            right: null,
            bottom: null,
            height: 2267.0,
            child: RectangleWidget1(),
      ),*/
         Container(
           child: Positioned(
             left: 16.0,
             top: 15.0,
              right: null,
              bottom: null,
              child: FrameWidget(),
      ),
         ),
      Positioned(
            left: 16.0,
            top: 450.0,
            right: null,
            bottom: null,
            width: 86.0,
            height: 17.0,
            child: Text(
          '''Browse all''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          style: TextStyle(
            height: 1.171875,
            fontSize: 13.0,

            color: Color.fromARGB(255, 0, 0, 0),
      ),
            )),
        Positioned(
          left: left1,
          top: 480.0,
          right: null,
          bottom: null,
          child: RectangleWidget2(),
        ),
        Positioned(
            left: left2,
            top: 480.0,
            right: null,
            bottom: null,
            child: RectangleWidget3(),
      ),
      Positioned(
            left: left1,
            top: 790.0,
            right: null,
            bottom: null,
            child: RectangleWidget3(),
      ),
      Positioned(
            left: left2,
            top: 870.0,
            right: null,
            bottom: null,
            child: RectangleWidget2(),
      ),
        ////////
        Positioned(
          left: left1,
          top: 1180.0,
          right: null,
          bottom: null,
          child: RectangleWidget2(),
        ),
        Positioned(
          left: left2,
          top: 1180.0,
          right: null,
          bottom: null,
          child: RectangleWidget3(),
        ),
        Positioned(
          left: left1,
          top: 1490.0,
          right: null,
          bottom: null,
          child: RectangleWidget3(),
        ),
        Positioned(
          left: left2,
          top: 1570.0,
          right: null,
          bottom: null,
          child: RectangleWidget2(),
        ),



    ]),
    ))
    ])),
    );
    }));
    }
    }

