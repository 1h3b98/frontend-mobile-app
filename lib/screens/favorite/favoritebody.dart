import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:aftercode0/api/productmodel.dart';

class FavoriteBody extends StatefulWidget {
  @override
  _FavoriteBodyState createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  List<ProductModel> _products=List<ProductModel>();
  Future fetchProduct() async{
    const url= 'https://bartering.herokuapp.com/offer/';
    var response = await http.get(Uri.parse(url));
    var products = List<ProductModel>();
    print('helooooooo');
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200){
      var productJson= json.decode(response.body);
      for (var productJson in productJson){
        products.add(ProductModel.fromJson(productJson));
      }
    }
    return products;
  }
  @override
  Widget build(BuildContext context) {
    fetchProduct().then((value) {
      setState(() {
        _products.addAll(value);
      });

    });
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Container(height: 40,width: 40,
                  child: Positioned(left: 0,),
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage('_'),
                      fit:BoxFit.fill,),
                    shape:BoxShape.circle,),

                ),
                Container(height: 40,
                  child: Positioned(left:40,
                    child: Column(
                        children: <Widget>[
                          Text(_products[index].Productid),
                          Text(_products[index].user),
                          Text(_products[index].ProductTitle),
                          Text(_products[index].ProductSlug),
                          Text(_products[index].release_date),
                          Text(_products[index].barter_with),
                          Text(_products[index].price),
                          Text(_products[index].categorie),
                        ]
                    ),
                  ),

                )



              ],
            ),
          );
        }
    );
  }
}
