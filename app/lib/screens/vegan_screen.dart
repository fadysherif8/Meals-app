import 'package:flutter/material.dart';

class VeganScreen extends StatelessWidget {
  static const routeName = '/vegan-meals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Vegan'),
      ),
      body: Center(child: Text('This is Vegan screen')),
    );
  }
}
