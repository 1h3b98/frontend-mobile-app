import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aftercode0/models/product.dart';
import 'package:aftercode0/painters/circlepainters.dart';
import 'package:aftercode0/screens/home/products_list.dart';
import 'package:aftercode0/widgets/item_product.dart';
import 'package:aftercode0/widgets/occasions.dart';
import 'package:page_transition/page_transition.dart';
import 'package:aftercode0/utils/constant.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CategoriesListView(
              title: "YOUR TITLES",
              categories: [
                'menu.png',
                'tshirt.png',
                'telephone.png',
                'armchair.png',
                'baby.png',
                'lipstick.png',
                'diamond.png',
                'book.png'
              ],
              categoryTitle: [
                'All',
                'Dress',
                'Electronic',
                'Home',
                'Baby',
                'Fashion',
                'Jewel',
                'Book'
              ],
            ),
            buildCarouselSlider(),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Popular Trendings",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: ProductList(),
                          ),
                        );
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.blue),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildTrending(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Best Selling",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("Clicked");
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.blue),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildTrending(),
            Occasions(),
            Occasions(),
          ],
        ),
      ),

    );
  }
}
class CategoriesListView extends StatelessWidget {
  final String title;
  final List<String> categories;
  final List<String> categoryTitle;

  const CategoriesListView({Key key,
    @required this.title,
    @required this.categories,
    @required this.categoryTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: ProductList(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 55,
                          height: 55,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blueGrey,
                              width: 1,
                            ),
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/" + categories[index],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            categoryTitle[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Regular',
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

CarouselSlider buildCarouselSlider() {
  return CarouselSlider(
    height: 150,
    viewportFraction: 0.9,
    aspectRatio: 16 / 9,
    autoPlay: true,
    enlargeCenterPage: true,
    items: imgList.map(
          (url) {
        return Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Sunny Getaways",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                          "Lorem Ipsım Dolar Lorem Ipsım Dolar Lorem Ipsım Dolar",
                          style:
                          TextStyle(color: Colors.white, fontSize: 14)),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    ).toList(),
  );
}

Column buildTrending() {
  return Column(
    children: <Widget>[
      Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            TrendingItem(
              product: Product(
                  company: 'Apple',
                  name: 'iPhone 11 (128GB)',
                  icon: 'assets/phone1.jpeg',
                  rating: 4.5,
                  remainingQuantity: 5,
                  price: '\$4,000'),
              gradientColors: [Color(0XFFa466ec), Colors.purple[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'iPhone',
                  name: 'iPhone 11 (64GB)',
                  icon: 'assets/phone2.jpeg',
                  rating: 4.5,
                  price: '\$3,890'),
              gradientColors: [Color(0XFF6eed8c), Colors.green[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'Xiaomi',
                  name: 'Xiaomi Redmi Note8',
                  icon: 'assets/mi1.png',
                  rating: 3.5,
                  price: '\$2,890'),
              gradientColors: [Color(0XFFf28767), Colors.orange[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'Apple',
                  name: 'iPhone 11 (128GB)',
                  icon: 'assets/phone1.jpeg',
                  rating: 4.5,
                  remainingQuantity: 5,
                  price: '\$4,000'),
              gradientColors: [Color(0XFFa466ec), Colors.purple[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'iPhone',
                  name: 'iPhone 11 (64GB)',
                  icon: 'assets/phone2.jpeg',
                  rating: 4.5,
                  price: '\$3,890'),
              gradientColors: [Color(0XFF6eed8c), Colors.green[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'Xiaomi',
                  name: 'Xiaomi Redmi Note8',
                  icon: 'assets/mi1.png',
                  rating: 3.5,
                  price: '\$2,890'),
              gradientColors: [Color(0XFFf28767), Colors.orange[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'Apple',
                  name: 'iPhone 11 (128GB)',
                  icon: 'assets/phone1.jpeg',
                  rating: 4.5,
                  remainingQuantity: 5,
                  price: '\$4,000'),
              gradientColors: [Color(0XFFa466ec), Colors.purple[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'iPhone',
                  name: 'iPhone 11 (64GB)',
                  icon: 'assets/phone2.jpeg',
                  rating: 4.5,
                  price: '\$3,890'),
              gradientColors: [Color(0XFF6eed8c), Colors.green[400]],
            ),
            TrendingItem(
              product: Product(
                  company: 'Xiaomi',
                  name: 'Xiaomi Redmi Note8',
                  icon: 'assets/mi1.png',
                  rating: 3.5,
                  price: '\$2,890'),
              gradientColors: [Color(0XFFf28767), Colors.orange[400]],
            ),
          ],
        ),
      )
    ],
  );
}
