import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerImage extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Color colorFocus;
  final bool isExpanded;
  final bool isCenter;
  final VoidCallback cb;

  ContainerImage(
      {this.isExpanded = false,
      this.title = '',
      this.image = '',
      this.isCenter = true,
      this.cb,
      this.colorFocus = ColorsUtils.menuSelectDark,
      this.color = ColorsUtils.menuBackground});

  @override
  Widget build(BuildContext context) {
    Widget childWidgetContainer;
    Widget childWidgetText;
    if (title.isNotEmpty) {
      if (isCenter) {
        childWidgetText = FlatButton(
          onPressed: cb == null ? () => {} : cb,
          focusColor: colorFocus,
          child: Text(title, textAlign: TextAlign.center, style: TextStylesUtils().styleMedium20TextSelect),
        );
      } else {
        childWidgetText = Container(
          alignment: Alignment.bottomLeft,
          child: FlatButton(
            onPressed: cb == null ? () => {} : cb,
            focusColor: colorFocus,
            child: Text(title, textAlign: TextAlign.left, style: TextStylesUtils().styleMedium20TextSelect),
          ),
        );
      }
    } else {
      childWidgetText = MaterialButton(onPressed: cb == null ? () => {} : cb, focusColor: ColorsUtils.menuSelectDark);
    }
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
        child: childWidgetText,
      );
    } else {
      childWidgetContainer = Container(
        height: double.infinity,
        width: double.infinity,
        color: color,
        child: childWidgetText,
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
