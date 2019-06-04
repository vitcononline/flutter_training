// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:peih/models/app_state.dart';
import 'package:peih/reducers/reducers.dart';
import 'package:peih/routes.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  Widget build(BuildContext context) {
    // this._firebaseMessaging.requestNotificationPermissions();

    // this._firebaseMessaging.getToken().then((onValue) => {
    //   print(onValue)
    // }) ;

    final Store<AppState> store =
        Store<AppState>(appStateReducer, initialState: AppState.initialState());

    return StoreProvider(
      store: store,
      child: Routes(),
    );
  }
}
