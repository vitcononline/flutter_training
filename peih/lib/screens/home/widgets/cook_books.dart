import 'package:flutter/material.dart';
import 'package:peih/util/constants.dart';
import 'package:peih/widgets/cook_book.dart';
import 'package:peih/widgets/staggered_grid_view.dart';

class CookBooks extends StatefulWidget {
  @override
  _CookBooksState createState() => _CookBooksState();
}

class _CookBooksState extends State<CookBooks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  // shape: new RoundedRectangleBorder(
                  //     borderRadius: new BorderRadius.circular(20.0)),
                  color: Colors.orange,
                  onPressed: () => 1 + 1,
                  child: Text("Cook books"),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: FlatButton(
                    // textTheme: ButtonTextTheme.accent,
                    // shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.only(
                    //         topLeft: Radius.circular(3),
                    //         bottomLeft: Radius.circular(3))),
                    color: Colors.greenAccent,
                    onPressed: () => 1 + 1,
                    child: Text("Collection"),
                  )),
            ],
          ),
          StaggeredGridView([
            CookBook(Constants.picture_0),
            CookBook(Constants.picture_1),
            CookBook(Constants.picture_2),
            CookBook(Constants.picture_3),
            CookBook(Constants.picture_4),
            CookBook(Constants.picture_5),
            CookBook(Constants.picture_6),
            CookBook(Constants.picture_7),
            CookBook(Constants.picture_8),
            CookBook(Constants.picture_9),
          ], 3),
        ],
      ),
    );
  }
}
