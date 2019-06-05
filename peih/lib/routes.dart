import 'package:flutter/material.dart';
import 'package:peih/screens/screens.dart';
import 'package:peih/util/routes_url.dart';

class Routes extends StatelessWidget {
  const Routes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesURL.home_url,
      routes: {
        RoutesURL.home_url: (context) => Home(),
        RoutesURL.detail_url: (context) => Detail(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
