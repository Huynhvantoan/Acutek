import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerHome extends StatefulWidget {
  final String title;
  final String image;
  final Color color;
  final Color colorFocus;
  final bool isExpanded;
  final bool isCenter;
  final VoidCallback cb;

  ContainerHome(
      {this.isExpanded = false,
      this.title = '',
      this.image = '',
      this.isCenter = true,
      this.cb,
      this.colorFocus = ColorsUtils.menuSelectDark,
      this.color = ColorsUtils.menuBackground});

  @override
  _ContainerHomeState createState() => _ContainerHomeState();
}

class _ContainerHomeState extends State<ContainerHome> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
      print("Has focus: ${_focusNode.hasFocus}");
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget childWidgetContainer;
    Widget childWidgetText;
    if (widget.title.isNotEmpty) {
      if (widget.isCenter) {
        childWidgetText = FlatButton(
          onPressed: widget.cb == null ? () => {} : widget.cb,
          focusColor: widget.colorFocus,
          child: Text(widget.title,
              textAlign: TextAlign.center,
              style: _focusNode.hasFocus ? TextStylesUtils().styleMedium20White : TextStylesUtils().styleMedium20TextSelect),
        );
      } else {
        childWidgetText = Container(
          alignment: Alignment.bottomLeft,
          decoration: _focusNode.hasFocus
              ? BoxDecoration(
                  border: Border(bottom: BorderSide(color: ColorsUtils.menuSelect)),
                  gradient: LinearGradient(
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 1.0),
                    colors: [Color(0x00000000), Color(0x1F000000), Color(0x96000000)],
                  ),
                )
              : BoxDecoration(
                  gradient: LinearGradient(
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 1.0),
                    colors: [Color(0x24000000), Color(0x82000000), Color(0xd5000000)],
                  ),
                ),
          child: FlatButton(
            onPressed: widget.cb == null ? () => {} : widget.cb,
            color: ColorsUtils.transparent,
            focusNode: _focusNode,
            child: Text(widget.title,
                textAlign: TextAlign.left,
                style: _focusNode.hasFocus ? TextStylesUtils().styleMedium20White : TextStylesUtils().styleMedium20TextSelect),
          ),
        );
      }
    } else {
      childWidgetText = MaterialButton(onPressed: widget.cb == null ? () => {} : widget.cb, focusColor: ColorsUtils.menuSelectDark);
    }
    if (widget.image.isNotEmpty) {
      childWidgetContainer = Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.color,
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
        child: childWidgetText,
      );
    } else {
      childWidgetContainer = Container(
        height: double.infinity,
        width: double.infinity,
        color: widget.color,
        child: childWidgetText,
      );
    }
    if (widget.isExpanded) {
      return Expanded(
        child: childWidgetContainer,
        flex: 1,
      );
    } else {
      return childWidgetContainer;
    }
  }
}
