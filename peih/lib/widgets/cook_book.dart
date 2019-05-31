import 'package:flutter/material.dart';
import 'package:peih/models/constants.dart';

class CookBook extends StatelessWidget {
  String image = Constants.picture_1;

  CookBook(String image) {
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      // color: Colors.blue,
      child: Image(
        image: AssetImage(this.image),
      ),
    );
  }
}
