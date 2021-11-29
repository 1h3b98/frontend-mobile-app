import 'package:aftercode0/api/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<CategoriesModel> _categories = List<CategoriesModel>();

  Future fetchCategories() async {
    const url = 'https://bartering.herokuapp.com/category/';
    var response = await http.get(Uri.parse(url));
    var categories = List<CategoriesModel>();
    if (response.statusCode == 200) {
      var categorieJson = json.decode(response.body);
      for (var categorieJson in categorieJson) {
        categories.add(CategoriesModel.fromJson(categorieJson));
      }
    }
    return categories;
  }

  @override
  Widget build(BuildContext context) {
    fetchCategories().then((value) {
      setState(() {
        _categories.addAll(value);
      });
    });
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('$index'),

          );
        }
    );
  }
}