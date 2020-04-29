import 'package:blendtv/data/model/epg_entity.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:blendtv/ui/screen/widget/container_button_epg.dart';
import 'package:flutter/material.dart';

class TVGuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TVGuideState();
}

class TVGuideState extends State<TVGuidePage> {
  ScrollController _scrollControllerTimeline;

  @override
  void initState() {
    super.initState();
    _scrollControllerTimeline = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            buildTimeLine(),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[buildChannel(), listViewEpgHorizalNew()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTimeLine() {
    final listimeline = [
      "00:00",
      "00:30",
      "01:00",
      "01:30",
      "02:00",
      "02:30",
      "03:00",
      "03:30",
      "04:00",
      "04:30",
      "05:00",
      "05:30",
      "06:00",
      "06:30",
      "07:00",
      "07:30",
      "08:00",
      "08:30",
      "09:00",
      "09:30",
      "10:00",
      "10:30",
      "11:00",
      "11:30",
      "12:00",
      "12:30"
    ];
    return Container(
        width: 30000.0,
        height: 50,
        child: Padding(
          padding: EdgeInsets.only(left: 100),
          child: ListView.builder(
              controller: _scrollControllerTimeline,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: listimeline.length,
              itemBuilder: (context, position) {
                return Container(
                  width: 150,
                  height: 50,
                  child: Text(
                    listimeline[position],
                    style: TextStylesUtils().styleMedium20Black,
                  ),
                );
              }),
        )
    );
  }

  final listChannel = [
    "acb",
    "bca",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "tyb",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "enc",
    "tyb",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc",
    "tyb",
    "acb",
    "bca",
    "enc"
  ];

  Widget buildChannel() {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemExtent: 50,
        itemBuilder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                child: Text(
                  listChannel[position],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  height: 0,
                  color: Colors.grey,
                ),
              )
            ],
          );
        },
        itemCount: listChannel.length,
      ),
    );
  }

  Widget listViewEpgHorizalNew() {
    return Expanded(
      flex: 10,
      child: NotificationListener<ScrollNotification>(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _createTextColum(listChannel.length),
          ),
        ),
        // ignore: missing_return
        onNotification: (ScrollNotification scrollInfo) {
          //print(scrollInfo.depth);
          print(scrollInfo.metrics.pixels);
          //print(_scrollControllerVetical.offset);
          //print(_scrollControllerTimeline.offset);
          if (scrollInfo is ScrollStartNotification) {
          } else if (scrollInfo is ScrollUpdateNotification) {
            _scrollControllerTimeline.jumpTo(scrollInfo.metrics.pixels);
          } else if (scrollInfo is ScrollEndNotification) {}
        },
      ),
    );
  }

  List<Widget> _createTextColum(int i) {
    List<Widget> widgets = [];
    for (int r = 0; r <= i; r++) {
      widgets.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _createText(24),
      ));
    }
    return widgets;
  }

  List<Widget> _createText(int i) {
    List<Widget> widgets = [];
    for (int r = 0; r <= i; r++) {
      var listData = _createDataTest();
      widgets.add(newCell(listData[r]));
    }
    return widgets;
  }

  Widget newCell(EPGEntity data) {
    return ContainerEPG(
      width: data.end,
      title: data.title,
      bgColor: ColorsUtils.veryLightBlueTwo,
    );
  }

  @override
  void dispose() {
    _scrollControllerTimeline.dispose();
    super.dispose();
  }

  List<EPGEntity> _createDataTest() {
    List<EPGEntity> dataList = List();
    dataList.add(EPGEntity(0, 100.0, "program1"));
    dataList.add(EPGEntity(0, 100.0, "program2"));
    dataList.add(EPGEntity(0, 120.0, "program3"));
    dataList.add(EPGEntity(0, 90.0, "program4"));
    dataList.add(EPGEntity(0, 120.0, "program5"));
    dataList.add(EPGEntity(0, 210.0, "program6"));
    dataList.add(EPGEntity(0, 190.0, "program7"));
    dataList.add(EPGEntity(0, 200.0, "program8"));
    dataList.add(EPGEntity(0, 190.0, "program4"));
    dataList.add(EPGEntity(0, 310.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 400.0, "program2"));
    dataList.add(EPGEntity(0, 500.0, "program3"));
    dataList.add(EPGEntity(0, 120.0, "program4"));
    dataList.add(EPGEntity(0, 400.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 400.0, "program2"));
    dataList.add(EPGEntity(0, 500.0, "program3"));
    dataList.add(EPGEntity(0, 300.0, "program4"));
    dataList.add(EPGEntity(0, 150.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 400.0, "program2"));
    dataList.add(EPGEntity(0, 500.0, "program3"));
    dataList.add(EPGEntity(0, 400.0, "program4"));
    dataList.add(EPGEntity(0, 300.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 400.0, "program2"));
    dataList.add(EPGEntity(0, 260.0, "program3"));
    dataList.add(EPGEntity(0, 400.0, "program4"));
    dataList.add(EPGEntity(0, 210.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 150.0, "program2"));
    dataList.add(EPGEntity(0, 500.0, "program3"));
    dataList.add(EPGEntity(0, 340.0, "program4"));
    dataList.add(EPGEntity(0, 170.0, "program5"));
    dataList.add(EPGEntity(0, 250.0, "program1"));
    dataList.add(EPGEntity(0, 400.0, "program2"));
    dataList.add(EPGEntity(0, 500.0, "program3"));
    dataList.add(EPGEntity(0, 400.0, "program4"));
    dataList.add(EPGEntity(0, 190.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 400.0, "program2"));
    dataList.add(EPGEntity(0, 220.0, "program3"));
    dataList.add(EPGEntity(0, 210.0, "program4"));
    dataList.add(EPGEntity(0, 400.0, "program5"));
    dataList.add(EPGEntity(0, 300.0, "program1"));
    dataList.add(EPGEntity(0, 220.0, "program2"));
    dataList.add(EPGEntity(0, 310.0, "program3"));
    dataList.add(EPGEntity(0, 320.0, "program4"));
    dataList.add(EPGEntity(0, 180.0, "program5"));
    dataList.add(EPGEntity(0, 310.0, "program6"));
    dataList.shuffle();
    return dataList;
  }
}
