import 'package:flutter/material.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';

class TVGuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TVGuideState();
}

class TVGuideState extends State<TVGuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Text('ShowPage', style: TextStylesUtils().styleMedium20TextSelect),
          )
        ],
      ),
    );
  }

}
