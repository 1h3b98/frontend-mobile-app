import 'package:flutter/material.dart';
import 'package:aftercode0/screens/favorite/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Like New",
            isActive: true,
            press: () {

            },
          ),
          CategoryItem(
            title: "Good condition",
            press: () {},
          ),
          CategoryItem(
            title: "Worn",
            press: () {},
          ),
          CategoryItem(
            title: "Broken",
            press: () {},
          ),
        ],
      ),
    );
  }
}
