import 'package:blendtv/config/router_manger.dart';
import 'package:blendtv/generated/l10n.dart';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/image.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:blendtv/ui/screen/widget/container_button.dart';
import 'package:flutter/material.dart';

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
                    ContainerButton(
                      isExpanded: true,
                      title: S.of(context).homeShows.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.show);
                      },
                    ),
                    ContainerButton(
                      isExpanded: true,
                      title: S.of(context).homeMovies.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.movies);
                      },
                    ),
                    ContainerButton(
                      isExpanded: true,
                      title: S.of(context).homeTVGuide.toUpperCase(),
                      cb: () {
                        Navigator.pushNamed(context, RouteName.tvGuide);
                      },
                    ),
                    ContainerButton(
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
                    ContainerButton(
                      isExpanded: true,
                      title: S.of(context).homePackages,
                      bgColorFocus: ColorsUtils.veryLightBlueThree,
                      isCenter: false,
                      image: ImagesUtils.bgPackage,
                      cb: () {
                        Navigator.pushNamed(context, RouteName.package);
                      },
                    ),
                    ContainerButton(
                      isExpanded: true,
                      title: S.of(context).homeChannel,
                      bgColorFocus: ColorsUtils.veryLightBlueThree,
                      isCenter: false,
                      image: ImagesUtils.bgChannelList,
                      cb: () {
                        Navigator.pushNamed(context, RouteName.channel);
                      },
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ContainerButton(
                            isExpanded: true,
                            title: S.of(context).homeParental,
                            bgColorFocus: ColorsUtils.veryLightBlueThree,
                            isCenter: false,
                            image: ImagesUtils.bgParentalControl,
                            cb: () {
                              Navigator.pushNamed(context, RouteName.parental);
                            },
                          ),
                          ContainerButton(
                            isExpanded: true,
                            title: S.of(context).homeLogin,
                            bgColorFocus: ColorsUtils.veryLightBlueThree,
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
          color: ColorsUtils.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImagesUtils.iconLanding),
                width: 600.w,
                height: 250.h,
              ),
              SizedBox(
                height: 100.h,
              ),
              Text(
                "4:51 pm  | Tuesday, April 07th, 2020 | 89F",
                style: TextStylesUtils().styleMedium20White,
              ),
            ],
          ),
        ),
        flex: 1,
      );

  Widget buildVast() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.black,
        ),
        flex: 1,
      );
}
