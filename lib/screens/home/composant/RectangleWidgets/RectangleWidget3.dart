import 'package:flutter/material.dart';


class RectangleWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width)/2-20,
      height: 380.0,
      color: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Image.asset(
          "_",
          color: null,
          fit: BoxFit.cover,
          width: (MediaQuery.of(context).size.width)/2-20,
          height: 380.0,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );
  }
}
