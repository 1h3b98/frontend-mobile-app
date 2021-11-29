import 'package:aftercode0/screens/search/searchScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aftercode0/constants.dart';
import 'package:aftercode0/screens/profile/login.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    /*leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {

      },
    ),*/
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "After",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "Code",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder:
          (context) => Search(),),
          );
        },
      ),
      IconButton(
        icon: Icon(Icons.person),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder:
                (context) => LoginScreen(),),
          );
        },
      ),

    ],
  );
}
