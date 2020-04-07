import 'package:flutter/material.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';

class ParentalControlPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ParentalControlState();
}

class ParentalControlState extends State<ParentalControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Text('ParentalControlState', style: TextStylesUtils().styleMedium20TextSelect),
          )
        ],
      ),
    );
  }
}
