import 'package:flutter/material.dart';
import 'routes/gallery.dart';
import 'routes/import.dart';
import 'routes/export.dart';
import 'routes/profile.dart';
import 'routes/logout.dart';
import 'routes/app_1.dart';
import 'routes/app_2.dart';
import 'routes/app_3.dart';
import 'routes/app_4.dart';
import 'routes/app_5.dart';
import 'routes/app_6.dart';
import 'routes/app_7.dart';
import 'routes/app_8.dart';
import 'routes/app_9.dart';
import 'routes/app_10.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Import();
      case 1:
        return Gallery();
      case 2:
        return Export();
      case 3:
        return Profile();
      case 4:
        return Logout();
      case 5:
        return App_1();
      case 6:
        return App_2();
      case 7:
        return App_3();
      case 8:
        return App_4();
      case 9:
        return App_5();
      case 10:
        return App_6();
      case 11:
        return App_7();
      case 12:
        return App_8();
      case 13:
        return App_9();
      case 14:
        return App_10();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Omar Suarez'),
              accountEmail: Text('omar.suarez.rod@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('O', style: TextStyle(fontSize: 40.0)),
              ),
            ),
            ListTile(
              title: Text('Import'),
              leading: Icon(Icons.camera_alt),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('Gallery'),
              leading: Icon(Icons.photo_library),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('Export'),
              leading: Icon(Icons.save),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.account_circle),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(4);
              },
            ),
            Divider(),
            ListTile(
              title: Text('App 1'),
              leading: Icon(Icons.exit_to_app),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(5);
              },
            ),
            ListTile(
              title: Text('App 2'),
              leading: Icon(Icons.exit_to_app),
              selected: (6 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(6);
              },
            ),
            ListTile(
              title: Text('App 3'),
              leading: Icon(Icons.exit_to_app),
              selected: (7 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(7);
              },
            ),
            ListTile(
              title: Text('App 4'),
              leading: Icon(Icons.exit_to_app),
              selected: (8 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(8);
              },
            ),
            ListTile(
              title: Text('App 5'),
              leading: Icon(Icons.exit_to_app),
              selected: (9 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(9);
              },
            ),
            ListTile(
              title: Text('App 6'),
              leading: Icon(Icons.exit_to_app),
              selected: (10 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(10);
              },
            ),
            ListTile(
              title: Text('App 7'),
              leading: Icon(Icons.exit_to_app),
              selected: (11 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(11);
              },
            ),
            ListTile(
              title: Text('App 8'),
              leading: Icon(Icons.exit_to_app),
              selected: (12 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(12);
              },
            ),
            ListTile(
              title: Text('App 9'),
              leading: Icon(Icons.exit_to_app),
              selected: (13 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(13);
              },
            ),
            ListTile(
              title: Text('App 10'),
              leading: Icon(Icons.exit_to_app),
              selected: (14 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(14);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
