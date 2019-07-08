import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:peih/localizations/localizations.dart';
import 'package:peih/screens/screens.dart';
import 'package:peih/util/routes_url.dart';

class Routes extends StatelessWidget {
  const Routes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('vi'),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context).title,
      initialRoute: RoutesURL.home_url,
      routes: {
        RoutesURL.home_url: (context) => Home(),
        RoutesURL.detail_url: (context) => Detail(),
      },
      // title: 'Flutter Demo',
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
