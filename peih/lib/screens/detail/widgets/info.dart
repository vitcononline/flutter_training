import 'package:flutter/material.dart';
import 'package:peih/util/constants.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // picture profile
    Widget pictureProfile = Container(
      width: 50,
      height: 50,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          gradient: new LinearGradient(
            colors: [Colors.red, Colors.cyan],
          ),
          image: DecorationImage(image: AssetImage(Constants.picture_2))),
    );

    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Flex(
        mainAxisSize: MainAxisSize.max,
        direction: Axis.horizontal,
        children: <Widget>[
          pictureProfile,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Lorem is",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "05-26 15:23",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "1532 Read",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
