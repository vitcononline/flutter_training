import 'package:flutter/material.dart';
import 'package:peih/localizations/localizations.dart';
import 'package:peih/screens/detail/widgets/content.dart';
import 'package:peih/screens/detail/widgets/info.dart';

class Detail extends StatefulWidget {
  Detail({Key key}) : super(key: key);

  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  // Title detail
  Widget title = Container(
    margin: EdgeInsets.only(top: 20, left: 30, right: 30),
    child: Text(
      "Lorem Ipsum is simply dummy text",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).title,),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                title,
                Info(),
                Content(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
