import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';
import 'package:flutter_complete_guide/screens/vegan_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          child: const Center(
            child: Text(
              'My Meals',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          padding: EdgeInsets.only(top: 100),
          width: double.infinity,
          color: Theme.of(context).accentColor,
        ),
        buildListTile('Favorites', Icons.star, () {
          Navigator.of(context).pushNamed(FavoritesScreen.routeName);
        }),
        buildListTile('Vegan', Icons.apple, () {
          Navigator.of(context).pushNamed(VeganScreen.routeName);
        }),
      ],
    ));
  }
}
