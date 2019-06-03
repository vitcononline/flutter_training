import 'package:flutter/material.dart';

class CookBook extends StatelessWidget {
  final String image;

  CookBook(this.image, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4, right: 4, top: 10),
      // color: Colors.blue,
      child: Image(
        image: AssetImage(this.image),
      ),
    );
  }
}
