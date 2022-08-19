// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:pears_trade/widgets/main_drawer.dart';


class LandingScreen extends StatelessWidget {
  static const routeName = '/landingScreen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(Icons.home),
            SizedBox(width: 10),
            Text('Home'),
          ],
        ),
      ),
      backgroundColor: Colors.black26,
      body: Center(
        child: Text('Landing Screen'),
      ),
      drawer: MainDrawer(),
    );
  }
}
