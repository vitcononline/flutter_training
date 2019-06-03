import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:peih/models/app_state.dart';
import 'package:peih/reducers/reducers.dart';
import 'package:peih/screens/screens.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store =
        Store<AppState>(appStateReducer, initialState: AppState.initialState());

    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ung dung hay nhat qua dat'),
          ),
          body: Home(),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
