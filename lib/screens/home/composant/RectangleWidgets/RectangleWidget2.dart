import 'package:flutter/material.dart';


class RectangleWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width)/2-20,
      height: 300.0,
      color: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Image.asset(
          "_",
          color: null,
          fit: BoxFit.cover,
          width: 167.0,
          height: 220.0,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );
  }
}
