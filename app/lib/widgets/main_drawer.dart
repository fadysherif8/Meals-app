import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          child: Text(
            'My Meals',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),
          ),
          padding: EdgeInsets.only(top: 100),
          width: double.infinity,
          color: Theme.of(context).accentColor,
        ),
        
      ],
    ));
  }
}
