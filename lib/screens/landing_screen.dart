// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pears_trade/pallete/deepBlue.dart';
import 'package:pears_trade/pallete/purplay.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildTopHeader(deviceSize),
            Expanded(
              child: Container(
                height: deviceSize.height * 0.547,
                decoration: BoxDecoration(
                  color: DeepBlue.kToDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 150,
                    shadowColor: Colors.deepPurpleAccent,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.black.withOpacity(0.05),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Migration Planner',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: deviceSize.width,
                            margin: EdgeInsets.only(
                              right: deviceSize.width * 0,
                              top: deviceSize.height * 0.0,
                              left: deviceSize.width * 0.005,
                              bottom: deviceSize.height * 0.03,
                            ),
                            child: Text(
                              'Please choose a migration stage below',
                              style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          _buildInkWell(
                              context, 'Stage Dataset', Colors.deepPurple),
                          SizedBox(height: 7),
                          _buildInkWell(
                              context, 'Source Data Mapping', Colors.greenAccent),
                          SizedBox(height: 7),
                          _buildInkWell(
                              context, 'Data Migration', Colors.blueAccent),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }

  Widget _buildTopHeader(Size deviceSize) {
    return Container(
      margin: EdgeInsets.only(
        right: deviceSize.width * 0.05,
        top: deviceSize.height * 0,
        left: deviceSize.width * 0.05,
        bottom: deviceSize.height * 0.00,
      ),
      child: Image.asset(
        'assets/images/dw-02.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildInkWell(BuildContext context, String content, Color color) {
    return InkWell(
      onTap: () {

      },
      splashColor: Purplay.kToDark,
      child: Container(
        padding: EdgeInsets.all(30),
        child: Text(
          content,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
