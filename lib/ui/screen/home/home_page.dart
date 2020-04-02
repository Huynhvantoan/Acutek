import 'package:blendtv/generated/l10n.dart';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/resources.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:flutter/material.dart';

enum View { TOP, BOTTOM }

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: ColorsUtils.dark,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    buildWeather(),
                    buildVast(),
                  ],
                ),
                flex: 1,
              ),
              Container(
                height: 150.h,
                child: Row(
                  children: <Widget>[
                    buildTextMenuItem(S.of(context).homeShows),
                    buildTextMenuItem(S.of(context).homeMovies),
                    buildTextMenuItem(S.of(context).homeTVGuide),
                    buildTextMenuItem(S.of(context).homeRecordings),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    buildPackage(),
                    buildChannelList(),
                    Expanded(
                      child: Column(
                        children: <Widget>[buildControl(), buildLogin()],
                      ),
                      flex: 1,
                    )
                  ],
                ),
                flex: 1,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildWeather() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.brownGrey,
          child: Text('Toàn Weather',
              textAlign: TextAlign.center,
              style: TextStylesUtils.styleAvenir20WhiteW600),
        ),
        flex: 1,
      );

  Widget buildVast() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.sandYellow,
          child: Text('Toàn Vast',
              textAlign: TextAlign.center,
              style: TextStylesUtils.styleAvenir20WhiteW600),
        ),
        flex: 1,
      );

  Widget buildTextMenuItem(String textName) => Expanded(
        child: FlatButton(
          onPressed: () {},
          focusColor: ColorsUtils.menuSelectDark,
          child: Text(textName.toUpperCase(), style: TextStylesUtils.styleAvenir12BlackW400),
        ),
        flex: 1,
      );

  Widget buildPackage() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.sandYellow,
          child: FlatButton(
            onPressed: () {},
            focusColor: ColorsUtils.menuSelectDark,
            child: Text(S.of(context).homePackages, style: TextStylesUtils.styleAvenir12BlackW400),
          ),
        ),
        flex: 1,
      );

  Widget buildChannelList() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.sandYellow,
          child: FlatButton(
            onPressed: () {},
            focusColor: ColorsUtils.menuSelectDark,
            child: Text(S.of(context).homeChannel, style: TextStylesUtils.styleAvenir12BlackW400),
          ),
        ),
        flex: 1,
      );

  Widget buildControl() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.sandYellow,
          child: FlatButton(
            onPressed: () {},
            focusColor: ColorsUtils.menuSelectDark,
            child: Text(S.of(context).homeParental, style: TextStylesUtils.styleAvenir12BlackW400),
          ),
        ),
        flex: 1,
      );

  Widget buildLogin() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.sandYellow,
          child: FlatButton(
            onPressed: () {},
            focusColor: ColorsUtils.menuSelectDark,
            child: Text(S.of(context).homeLogin, style: TextStylesUtils.styleAvenir12BlackW400),
          ),
        ),
        flex: 1,
      );
}
