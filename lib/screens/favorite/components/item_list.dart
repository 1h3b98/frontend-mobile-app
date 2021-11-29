import 'package:flutter/material.dart';
import 'package:aftercode0/screens/details/details-screen.dart';
import 'package:aftercode0/screens/favorite/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "Food-Ordering-App-master/assets/icons/macdonalds.svg",
            title: "Bed",
            UserName: "Mat",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "Food-Ordering-App-master/assets/icons/macdonalds.svg",
            title: "chair",
            UserName: "tom",
            press: () {},
          ),
          ItemCard(
            svgSrc: "Food-Ordering-App-master/assets/icons/macdonalds.svg",
            title: "laptop",
            UserName: "peter",
            press: () {},
          )
        ],
      ),
    );
  }
}
