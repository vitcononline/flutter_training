import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:peih/util/constants.dart';

class Content extends StatelessWidget {
  const Content({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.circular(20.0),
            child: Image.asset(
              Constants.picture_1,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              Constants.default_content,
              style: TextStyle(
                fontSize: 14,
                // wordSpacing:
              ),
            ),
          ),
        ],
      ),
    );
  }
}
