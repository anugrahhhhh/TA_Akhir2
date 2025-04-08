import 'package:flutter/material.dart';
import 'pages/home_with_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Navigasi Lengkap',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeWithDrawer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
