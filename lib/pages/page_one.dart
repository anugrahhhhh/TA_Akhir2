import 'package:flutter/material.dart';
import 'page_two.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page One')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ke Page Two (Stack)'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PageTwo()));
          },
        ),
      ),
    );
  }
}
