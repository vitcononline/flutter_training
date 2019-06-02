import 'package:flutter/material.dart';
import 'package:peih/screens/detail/detail.dart';
import 'package:peih/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
            // title: Text('Ec ec'),
            ),
        body: Detail(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
