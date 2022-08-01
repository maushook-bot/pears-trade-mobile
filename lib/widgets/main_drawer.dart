import 'package:flutter/material.dart';
import 'package:pears_trade/pallete/deepBlue.dart';
import 'package:pears_trade/providers/auth.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  void _tapHandler(BuildContext context, String routeName, arguments) {
    Navigator.of(context).popAndPushNamed(routeName, arguments: arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: Text(
                'Hello!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                size: 30,
                color: DeepBlue.kToDark.shade50,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 18, fontFamily: 'Anton-Regular'),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacementNamed('/');
                Provider.of<Auth>(context, listen: false).logout();
              },
            ),
          ],
        ),
    );
  }

  ListTile _buildListTile(BuildContext context, String title, IconData icon,
      route, arguments, Color color) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontFamily: 'Anton-Regular'),
      ),
      onTap: () => _tapHandler(context, route, arguments),
    );
  }
}
