import 'package:aftercode0/screens/categories.dart';
import 'package:flutter/material.dart';
import 'package:aftercode0/screens/favorite/favoritebody.dart';
import 'package:aftercode0/screens/home/homebody.dart';
import 'package:aftercode0/screens/profile/profileScreen.dart';

import '../constants.dart';

class drawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Iheb saad';
    final email = 'iheb@aftercode.tn';
    final urlImage ='_';

    return Drawer(
    child: Material(
      color: kPrimaryColor,
      child: ListView(
        children: <Widget>[
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProfileScreen(
              ),
            )),
          ),
          Container(
            padding: padding,
            child: Column(
              children: [
                const SizedBox(height: 12),
                buildSearchField(),
                const SizedBox(height: 24),
                buildMenuItem(
                  text: 'Categorie',
                  icon: Icons.category_outlined,
                  onClicked: () => selectedItem(context, 0),
                ),

                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'News',
                  icon: Icons.new_releases_outlined,
                  onClicked: () => selectedItem(context, 1),
                ),

                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Favourites',
                  icon: Icons.favorite_border,
                  onClicked: () => selectedItem(context, 2),
                ),

                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Messages',
                  icon: Icons.message_outlined,
                  onClicked: () => selectedItem(context, 3),
                ),

                const SizedBox(height: 24),
                Divider(color: Colors.white70),
                const SizedBox(height: 24),
                buildMenuItem(
                  text: 'Plugins',
                  icon: Icons.account_tree_outlined,
                  onClicked: () => selectedItem(context, 4),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Notifications',
                  icon: Icons.notifications_outlined,
                  onClicked: () => selectedItem(context, 5),
                ),

                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Support',
                  icon: Icons.contact_page_outlined,
                  onClicked: () => selectedItem(context, 6),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Help',
                  icon: Icons.help_outlined,
                  onClicked: () => selectedItem(context, 7),
                ),

                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Setting',
                  icon: Icons.settings_outlined,
                  onClicked: () => selectedItem(context, 8),
                ),
              ],
            ),
          ),
         /* buildMenuItem(
            text: 'People',
            icon: Icons.people,
          )*/
        ],
      ),
    ),
  );
  }

  Widget buildHeader({
     String urlImage,
     String name,
     String email,
     VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
  Widget buildMenuItem({
     String text,
     IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Categories(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavoriteBody(),
        ));
        break;
    }
  }
}
  /*Widget buildMenuItem({
    required String text,
    required IconData icon,
}){
    final color= Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,style: TextStyle(color:color)),
      hoverColor: hoverColor,
      onTap:() {},

    );
  }*/
