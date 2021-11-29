import 'package:flutter/material.dart';


class NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '''iheb saad''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 13.0,

          color: Color.fromARGB(255, 0, 0, 0),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
