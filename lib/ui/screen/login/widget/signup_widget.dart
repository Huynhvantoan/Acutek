import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:blendtv/config/router_manger.dart';
import 'package:blendtv/generated/l10n.dart';
import 'package:blendtv/res/text_styles.dart';

class SingUpWidget extends StatefulWidget {
  final nameController;

  SingUpWidget(this.nameController);

  @override
  _SingUpWidgetState createState() => _SingUpWidgetState();
}

class _SingUpWidgetState extends State<SingUpWidget> {
  TapGestureRecognizer _recognizerRegister;

  @override
  void initState() {
    _recognizerRegister = TapGestureRecognizer()
      ..onTap = () async {
        widget.nameController.text = await Navigator.of(context).pushNamed(RouteName.register);
      };
    super.initState();
  }

  @override
  void dispose() {
    _recognizerRegister.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text.rich(
        TextSpan(
          text: S.of(context).login_content1,
          style: TextStylesUtils().styleAvenir20TextSelectW500,
          children: [
            TextSpan(
                text: S.of(context).signUp,
                recognizer: _recognizerRegister,
                style: TextStylesUtils().styleAvenir20TextSelectW500),
            TextSpan(text: S.of(context).login_content2, style: TextStylesUtils().styleAvenir20TextSelectW500)
          ],
        ),
      ),
    );
  }
}