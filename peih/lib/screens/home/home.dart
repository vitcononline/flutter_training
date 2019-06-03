import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:peih/models/app_state.dart';
import 'package:peih/screens/home/profile.dart';
import 'package:peih/screens/home/cook_books.dart';
import 'package:peih/screens/home/view_model.dart';
import 'package:redux/redux.dart';

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
    return StoreConnector<AppState, ViewModel>(
      converter: (Store<AppState> store) => ViewModel.create(store),
      builder: (BuildContext context, ViewModel viewModel) => CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [Profile(viewModel), CookBooks()],
                ),
              ),
            ],
          ),
    );
  }
}
