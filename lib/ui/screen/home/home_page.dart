import 'package:blendtv/config/router_manger.dart';
import 'package:blendtv/generated/l10n.dart';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/image.dart';
import 'package:blendtv/ui/screen/widget/container_home.dart';
import 'package:blendtv/ui/screen/widget/container_home_title.dart';
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
                    ContainerImage(
                      isExpanded: true,
                      title: S.of(context).homeShows.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.show);
                      },
                    ),
                    ContainerImage(
                      isExpanded: true,
                      title: S.of(context).homeMovies.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.movies);
                      },
                    ),
                    ContainerImage(
                      isExpanded: true,
                      title: S.of(context).homeTVGuide.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.tvGuide);
                      },
                    ),
                    ContainerImage(
                      isExpanded: true,
                      title: S.of(context).homeRecordings.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.recording);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    ContainerHome(
                      isExpanded: true,
                      title: S.of(context).homePackages,
                      colorFocus: ColorsUtils.veryLightBlueThree,
                      isCenter: false,
                      image: ImagesUtils.bgPackage,
                      cb: () {
                        Navigator.pushNamed(context, RouteName.package);
                      },
                    ),
                    ContainerHome(
                      isExpanded: true,
                      title: S.of(context).homeChannel,
                      colorFocus: ColorsUtils.veryLightBlueThree,
                      isCenter: false,
                      image: ImagesUtils.bgChannelList,
                      cb: () {
                        Navigator.pushNamed(context, RouteName.channel);
                      },
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ContainerHome(
                            isExpanded: true,
                            title: S.of(context).homeParental,
                            colorFocus: ColorsUtils.veryLightBlueThree,
                            isCenter: false,
                            image: ImagesUtils.bgParentalControl,
                            cb: () {
                              Navigator.pushNamed(context, RouteName.parental);
                            },
                          ),
                          ContainerHome(
                            isExpanded: true,
                            title: S.of(context).homeLogin,
                            colorFocus: ColorsUtils.veryLightBlueThree,
                            isCenter: false,
                            image: ImagesUtils.bgHomeLogin,
                            cb: () {
                              Navigator.pushNamed(context, RouteName.login);
                            },
                          ),
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
          color: ColorsUtils.brownishGrey,
        ),
        flex: 1,
      );

  Widget buildVast() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.charcoalGrey,
        ),
        flex: 1,
      );
}
