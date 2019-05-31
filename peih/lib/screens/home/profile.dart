import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String content =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 12),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  color: Colors.yellowAccent,
                  width: 70,
                  height: 70,
                ),
                Container(
                  child: Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        onPressed: () => 1 + 1,
                        child: Text("Follow"),
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Lorem Ipsum",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Container(
            child: Container(
              color: Colors.white,
              height: 90,
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
