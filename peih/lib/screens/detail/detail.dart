import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail({Key key}) : super(key: key);

  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Widget pictureProfile = Container(
    width: 50,
    height: 50,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      gradient: new LinearGradient(
        colors: [Colors.red, Colors.cyan],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: Text(
                  "Lorem is ..........",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40, left: 40, right: 20),
                child: Row(
                  children: <Widget>[
                    pictureProfile,
                    Column(
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
                          color: Colors.red,
                          margin: EdgeInsets.only(left: 10, right: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                "05-26 15:23",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "05-26 15:23",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
