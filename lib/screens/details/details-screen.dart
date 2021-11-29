import 'package:flutter/material.dart';
import 'package:aftercode0/constants.dart';
import 'package:aftercode0/screens/details/components/app_bar.dart';
import 'package:aftercode0/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
