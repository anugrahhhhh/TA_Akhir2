import 'package:flutter/material.dart';
import '../pages/page_one.dart';
import '../pages/tab_navigation.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text('Menu Navigasi',
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: Text('Page One'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageOne()));
            },
          ),
          ListTile(
            title: Text('Tab Navigation'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TabNavigation()));
            },
          ),
        ],
      ),
    );
  }
}
