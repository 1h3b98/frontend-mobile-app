
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
  FocusNode nodeThree = FocusNode();


  String productName = '';
  String BarterWith = '';
  String Category_id;
  List<String> category = [
    "Categorie 1",
    "Categorie 2",
    "Categorie 3",
    "Categorie 4",
    "Categorie 5",
    "Categorie 6",
  ];
  String Description='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
      title: Text(
      "Add new product",
      style: TextStyle(color: Colors.black, fontSize: 16),
    ),
    leading: IconButton(
    icon:
    Icon(Ionicons.getIconData("ios-arrow-back"), color: Colors.black),
    onPressed: () => Navigator.pop(context),
    ),),
    body: ListView(
      padding: EdgeInsets.all(32),
      children: [
        buildImage(),
        const SizedBox(height: 24,),
        buildProductName(),
        const SizedBox(height: 24,),
        buildBarterWith(),
        const SizedBox(height: 24,),
        buildCategory(),
        const SizedBox(height: 24,),
        buildDescription(),
        const SizedBox(height: 24,),
        buildButtom(),

      ],
    )
        );
  }
  Widget buildProductName() => TextField(
    onChanged: (value) => setState(() => this.productName = value),
    onSubmitted: (value) => setState(() => this.productName = value),
    focusNode: nodeOne,
    decoration: InputDecoration(
      hintText: 'Your product name...',
      labelText: 'product name',
      border: OutlineInputBorder(),
    ),
  );

  Widget buildBarterWith() => TextField(
    onChanged: (value) => setState(() => this.BarterWith = value),
    onSubmitted: (value) => setState(() => this.BarterWith = value),
    focusNode: nodeTwo,
    decoration: InputDecoration(
      hintText: 'barter with money or another product...',
      labelText: 'Barter with',
      border: OutlineInputBorder(),
    ),
  );
  Widget buildCategory() => DropDownField(
    onValueChanged: (dynamic value){
      Category_id=value;
    },
    value: Category_id,
    required: true,
    labelText: 'Category',
    items: category,
  );
  Widget buildDescription() => TextField(
  onChanged: (value) => setState(() => this.Description = value),
  onSubmitted: (value) => setState(() => this.Description = value),
  maxLines: 7,
  focusNode: nodeThree,
  decoration: InputDecoration(
  hintText: 'say something about the product...',
  labelText: 'Description',
  border: OutlineInputBorder(),
  ),
  );
  Widget buildImage() => Container(
    padding: EdgeInsets.all(32),
    height: 330,
    color: kPrimaryColor,
  );
  Widget buildButtom() => Container(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),


      onPressed: (){},
      child: Text('submit'),

        ),
    width: 50,
    height: 60,
  );
}
