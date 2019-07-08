import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:peih/models/app_state.dart';
import 'package:peih/screens/home/widgets/cook_books.dart';
import 'package:peih/screens/home/widgets/profile.dart';
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("object");
  }

  @override
  void initState() {
    super.initState();
    print(this.context);
    // InheritedWidget e = this.context.inheritFromWidgetOfExactType(Home);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showDialog(
            context: context,
            builder: (BuildContext context) {
              print(_);
              return AlertDialog(
                title: Text('Rewind and remember'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('You will never be satisfied.'),
                      Text('You\’re like me. I’m never satisfied.'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Regret'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      converter: (Store<AppState> store) => ViewModel.create(store),
      builder: (BuildContext context, ViewModel viewModel) => Scaffold(
            appBar: AppBar(
              title: Text('Ung dung hay nhat qua dat'),
            ),
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Profile(viewModel),
                      CookBooks(),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
