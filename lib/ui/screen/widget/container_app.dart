import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerImage extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final bool isExpanded;

  ContainerImage({this.isExpanded = false, this.title = '', this.image = '', this.color = ColorsUtils.menuBackground});

  @override
  Widget build(BuildContext context) {
    Widget childWidgetContainer;
    if (image.isNotEmpty) {
      childWidgetContainer = Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: FlatButton(
          onPressed: () {},
          focusColor: ColorsUtils.menuSelectDark,
          child: Text(title, style: TextStylesUtils().styleAvenir20TextSelectW500),
        ),
      );
    } else {
      childWidgetContainer = Container(
        height: double.infinity,
        width: double.infinity,
        color: color,
        child: FlatButton(
          onPressed: () {},
          focusColor: ColorsUtils.menuSelectDark,
          child: Text(title, style: TextStylesUtils().styleAvenir20TextSelectW500),
        ),
      );
    }
    if (isExpanded) {
      return Expanded(
        child: childWidgetContainer,
        flex: 1,
      );
    } else {
      return childWidgetContainer;
    }
  }
}
