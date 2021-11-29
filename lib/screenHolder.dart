import 'package:aftercode0/addProduct.dart';
import 'package:aftercode0/screens/home/bodyHome.dart';
import 'package:flutter/material.dart';
import 'screens/favorite/favoritebody.dart';
import 'screens/message/messagebody.dart';

import 'components/app_bar.dart';
import 'constants.dart';
import 'drawers/drawer.dart';
class ScreenHolder extends StatefulWidget {
  @override
  _ScreenHolderState createState() => _ScreenHolderState();
}

class _ScreenHolderState extends State<ScreenHolder> {
  int _currentIndex=0;
  final List<Widget> _children = [
    BodyHome(),
    FavoriteBody(),
    MessageBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: homeAppBar(context),
      body: _children[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProduct()),);
        },
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
        hoverElevation: 50.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: ksecondaryColor,
        selectedItemColor: kPrimaryColor,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        iconSize: 33.0,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: new Text('Feed'),
          ),

          new BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Message')
          )
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState((){
      _currentIndex=index;
    });
  }
}




