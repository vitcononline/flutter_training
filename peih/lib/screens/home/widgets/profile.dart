import 'package:flutter/material.dart';
import 'package:peih/screens/home/view_model.dart';
import 'package:peih/util/constants.dart';
import 'package:peih/util/routes_url.dart';

class Profile extends StatefulWidget {
  final ViewModel viewModel;

  Profile(this.viewModel, {Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState(this.viewModel);
}

class _ProfileState extends State<Profile> {
  final ViewModel viewModel;
  static final String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.";

  // Constructor
  _ProfileState(this.viewModel);

  // User image
  Widget pictureProfile = Container(
    margin: const EdgeInsets.only(bottom: 20),
    width: 70,
    height: 70,
    decoration: new BoxDecoration(
      shape: BoxShape.circle,
      gradient: new LinearGradient(
        colors: [Colors.red, Colors.cyan],
      ),
      image: DecorationImage(
        image: AssetImage(Constants.picture_2),
      ),
    ),
  );

  // Username
  Widget username = Container(
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
  );

  // Description
  Widget description = Container(
    child: Container(
      color: Colors.white,
      height: 90,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          letterSpacing: 1,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // print(this.viewModel.pictures);

    // Button follow
    Widget followButton = Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 70,
        alignment: Alignment.centerRight,
        child: FlatButton(
          padding: EdgeInsets.only(left: 35.0, right: 35.0),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          onPressed: () => Navigator.pushNamed(context, RoutesURL.detail_url),
          child: Text("Follow"),
          color: Colors.yellow,
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(right: 15, left: 12),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              children: <Widget>[
                pictureProfile,
                followButton,
              ],
            ),
          ),
          username,
          description,
        ],
      ),
    );
  }
}
