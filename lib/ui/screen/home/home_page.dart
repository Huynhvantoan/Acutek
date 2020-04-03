import 'package:blendtv/generated/l10n.dart';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/image.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:blendtv/ui/screen/widget/container_app.dart';
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
                height: 200.h,
                child: Row(
                  children: <Widget>[
                    ContainerImage(isExpanded: true, title: S.of(context).homeShows.toUpperCase()),
                    ContainerImage(isExpanded: true, title: S.of(context).homeMovies.toUpperCase()),
                    ContainerImage(isExpanded: true, title: S.of(context).homeTVGuide.toUpperCase()),
                    ContainerImage(isExpanded: true, title: S.of(context).homeRecordings.toUpperCase()),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    ContainerImage(isExpanded: true, title: S.of(context).homePackages, image: ImagesUtils.bgPackage),
                    ContainerImage(isExpanded: true, title: S.of(context).homeChannel, image: ImagesUtils.bgChannelList),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ContainerImage(isExpanded: true, title: S.of(context).homeParental, image: ImagesUtils.bgParentalControl),
                          ContainerImage(isExpanded: true, title: S.of(context).homeLogin, image: ImagesUtils.bgLogin),
                        ],
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
          child: Text('Toàn Weather', textAlign: TextAlign.center, style: TextStylesUtils().styleAvenir20TextSelectW500),
        ),
        flex: 1,
      );

  Widget buildVast() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.sandYellow,
          child: Text('Toàn Vast', textAlign: TextAlign.center, style: TextStylesUtils().styleAvenir20TextSelectW500),
        ),
        flex: 1,
      );
}
