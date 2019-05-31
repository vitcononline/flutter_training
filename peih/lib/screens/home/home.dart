import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peih/screens/home/profile.dart';
import 'package:peih/screens/home/cook_books.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool liked = false;
  String name = "";

  var items = [];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [Profile(), CookBooks()],
          ),
        ),
      ],
    );
  }
}
