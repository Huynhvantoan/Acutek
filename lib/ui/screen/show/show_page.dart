import 'package:flutter/material.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';

class ShowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShowState();
}

class ShowState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildListCategory(),
          buildDetails(),
          buildListData(),
        ],
      ),
    );
  }

  final listCategory = ["Sports", "News", "Tv", "Froyo", "Gingerbread", "Honeycomb"];

  final listData = ["Sports", "News", "Tv", "Froyo", "Gingerbread", "Honeycomb"];

  Widget buildListCategory() => Container(
        height: 60.h,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: listCategory.length,
            itemBuilder: (context, position) {
              return Text(
                listCategory[position],
                style: TextStylesUtils().styleRegular20TextSelect,
              );
            }),
      );

  Widget buildDetails() => Expanded(
        child: Container(
          height: 60.h,
          width: double.infinity,
          color: ColorsUtils.brownishGrey,
        ),
        flex: 1,
      );

  Widget buildListData() => Container(
        height: 300.h,
        width: double.infinity,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: listCategory.length,
            itemBuilder: (context, position) {
              return Text(
                listCategory[position],
                style: TextStylesUtils().styleRegular20TextSelect,
              );
            }),
      );
}
