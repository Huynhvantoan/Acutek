import 'package:blendtv/data/model/show_entity.dart';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:blendtv/res/image.dart';
import 'package:blendtv/ui/screen/widget/container_home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/res/text_styles.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:flutter_svg/svg.dart';

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

  final listCategory = ["All", "Action", "Comedy", "Drama", "Family", "Documentary"];

  final listData = List<ShowEntity>.generate(
      100,
      (index) => (index % 2 == 0
          ? ShowEntity("Chipu",
              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAIIAbQMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAGBwQFAAIDAQj/xAA/EAACAQMCAwYDBQUGBwEAAAABAgMABBEFIQYSMQcTQVFhcRQikTKBobHBFSNCUtEkM0NisvBEU1RygpPSF//EABgBAAMBAQAAAAAAAAAAAAAAAAECAwAE/8QAIBEAAgIDAAIDAQAAAAAAAAAAAAECEQMSISIxMkFRYf/aAAwDAQACEQMRAD8AUM0MsDATRPGT0EilSfbNc6c1nPps8VmLo28qnTHWRJJFbcyD5d/HA6VIl0nhm60u1hmTTAYgwAXkBUNNzHp6fnWDryxJYrAKZ3EXDfD8+qldOW3gtwqktbyYXOQDgHboCfvFSdL4V4Pk1KeG7VzaiNTHJ8RICW5pM9P8oj+tNrQidipwTXvTr086eVtwRwFLOAkErrtj+0zYzyj1861u+BtHFzdXGnWEC8x57fmkAEZDNsATtsF/GhRmUHC2hJrnZ7FZuPmkFw8Xzco7xe9ZMny5gM+lCGocE8S6fI8dxo9y3KQC0K94DnyK5z+njinHDbrptjZiB7W1jjk5ZCXVUPMjBt+mST+dTtR4n0MX8E7azpyKitlXu4wSTjHj6UzRhBnhnXwCTompYBwf7JJt77VMsuCeJbtZGTRruNUUsTcJ3OR6c+M9R0pxycf8OWt1cSjUbaUSNzYjnU74x4H2qq1XtO0eaIJGx2WRcrIejY8h6UKNwVV7wvrNlOIJLGSSUsVCQDvScAEnC52AYb1Fh0nUpoO/h068kh3PeJbuy7HB3AxtTEPaHpa3rXKLyuQ+MKxwWVR/L/lqVadpWkQadb2eJOWFQpKxN8/XPtnNaum5Qr206+5QfgbrG2D3D436eFa9xNHtLFIh8mUg/Smvcdp2gzxJHLDeMqZOFjG5wdzlvWhe/wBf4OvLqSeaw1p3kYsxV4wNz5c1GgL+gN8VcA/LcTD2c178Vdf9TP8A+xv600NF4W0ie905ZtPhmW5RWm5nYnL/AH7H2xiiTVuz/hG1s3uLbTfmICL/AGmRl326FuvrSjqNyoRJuLg9Z5T7ua1LuftOx92NM/UuzfTe+vBaXlzAIjFyBsOBzFgRvufs+fjUG87MpbdX5dTjLIgyDFsXLAY67D5vI0LC4tKxdFVY5ZQT6ivORP5F+lMmy7JNXuYEle/solcZGzMce2BXLVOyvUtPdWOpWclsQOaUqysDvsE3z068w60aFLOy0a51vsjs7KwEQlErS4ckAhXcnGAd6W7WLQErcsE5TjA36Ua3uvvoPDcWh2NwsrRB1e5RcBuYkkAffjNUvD3Bms8Tq11FyxW5O0sv8R9B40JOgxi5eihaKMj925J9a4crEnG9Hdz2Y6narnvlkA6lFNDmpabNo12IZlPQHJ8aCkmM4NFSVZeoNejNGvCdjo+p6jBDqtu0kTnBCysn5EUVXPZroFhbyzvcX0ycy4DOP3Yyueg32bx8qahBQN0rXem5L2daKumxys1z30sMjAiYEKw7vlx57MeuaA9e0iDSu4h5G70jmd2YnOVQ4222JajqLYQ2PHdpYXEM8CNI0MaqsbRcqsVGAc52z+tTtR7T4737ULAADEYj2yAfHm9aDrvgziGzmEU+lyh2yF5XQ5wMnof94rXWOFNX0fBu7YsvLzM8OXVPHDHGxrDd+SCxu0mF2kd7d+aVkdgItgVUjA+fpuai6n2iveSAxwcqDBwyb5zn+bp0oHltZYiBNG8ZIyA6lcj7607rONxg9KxnJ/YyP/129UAC1gAAxtEf/qoesdoN/rtg9o0MUaORl+7wwA8vmOPL2zQKlvkgk7VIQ5IROrbChYUrLbStOk1vU44VheSCP5pRH9rl8ceuKfeh/BCwiXTwBCq8qrjHL6Y8KVHDnCnEFnEt/pcgjuCQeSQbOviPT6ffTUgUWdsZJeUO3XHiahOVs64wpE2cAqcgUuO03T4LjTTNgCSI5BxRXe6pf27c0lg0tvn7cLZYf+NAvHusRT2CrA4ZJTgefXy96Re+Ba8egPYTyWxjkjdlbOxU4IIqTdcV6ykjRG9mdRjHPK7fr6VXg4YDwAz9a0ltzLKXCnDHA9a6ziZNPFmr8oX4jZegOTj8a5Hi3WD/AMQg9oxUR7UYIAJPkKiLbyvnkidh5qpNa2BJD9s9QGt6rDFN+7hQ3DkKdxysRjP3Vw4muFeJ5gSFlhYjm2Gyr1+tJm31nUYmBiu54zgjKSsOvXofGujarqboEa5mZANlaRio+7NHm1jbt49GNvUraO7nkDOMrKvLkeBjU+Pqa73Eul6dbcQahdW0fIknKAUGWY42X3yPxpOHUL5mBkndmBDAliSD59eta3Vzc3OTPK7783zuTv57+NAF+TZpqN4bq6klwql2J5VGAoz0FFPZpw5+2dZ+JuFPwlr8zeTP4D8/pQSWwT408uEI7jTeAbO50+KJrlrdZgkhwHLAbZ8KlkdIvgjtKgtkuYLZu5YGKNE5ublITHTGfP0qFz/H3DHcRqPl/rVFLrltq9ibPUkikSTCyr0aJttmQ9OvXoauNKhjsLYrHIXXblz4ADGKhZ2OGvsD+I4df0fUVubCWeWywoe3IaTHTLAkml/xHdyXmsMWXk5nBKevjTU4s4kgsrWQBsycvSk737Xl3Jcy9DneqY+uyGbxjRzuzyLnxY/gKMOA4raa6smupIwkazTP3jgAkYCjfzz+FBN65eUY3xWqSXCYCM6gdMVdPpxseVnqFtFfWipNDyG4XnKuCEG5LZ8sqB94oR1q0ummAt42kVWb5k3B32oBF7qKj5Lqdf8Atcj8q4/tXVATjUr4e1y/9aMns7NjeiSCTTNB1C91SKytLcSXLsVChgcY6k+Q9TTi4d7MdG062DaxEmpXjbsz5Ea+ir+p39ulXvCHDFrw5YsECyXk/wA1zOernyHko8B9/U1dO4GfSs3+GSBefs+4aZmVdOSJX3IjZh+tL/ins1iXv57QzW6pnCoedCQceO4z5ZpxT3Ais5ZuvICajXEYuO9jYZQrz48yR/XNY1HzLqXDt3Y3McDIx7xcqSMZ3xTx4ShKcJ2Flc/LLDbrEwPoMD8Km8RaVatBpk8sSCSORkUkeLDJ/wBFQL1zDHzRMVI8q5ssndHXhiqtFZrHDNpcTc9637tN1ZPlcH0YbiqzWdejsYDFC5AUYGT5VD4m1meONgshz1zmljf3097KS8jFM+B60kYbF82d+5O2TNZ1CbU5mIYlAdznrUISFIVjHTNZFIscZDbkjAFZKAQAPA7n1rpSpHBKTk7ZY6Ho15qqzzWluZ+6YBlBGRkE539qvo+D9c78wHTisoTn5WdBt75q97IYg1jfoflLy4BHgOUY/M0balqVlZ69D8VfW8A7gq/eSqMfKMbHzORSqXQuC1sWVvoqfsXUZLqIfFpDzomDmIrJGGBPQkiQeeKA5V5ZGGPGmVFdK82qD4qFopLFxGjMMmQiAnHnnuvqPegK4029eZmS1lK56hTVGusl9n1vKxVCR1G9QLqcKFfmADjlO/jXe8k5V67gUL6hdrMHgVmDqeYDGwooLLEXPfaSmf8AFkI+4CrAMVuI184RmqGxDSi2g8ttvU5NXkrqt07ncRqB71mYq+LCXhtAo2hnEjY9QygfiaH77vJY0SPdi/KaJOJFKaMHb7bTIW+tUErd24kOwAGPeuXN7OvB8RWcfXHLcyWMBJMYzMw/KhDk5YxnambxXo8cWgXWpyRhWuZyoJ6kLvn72P4UurmIiNdtyKtjXiRzS8yHzbFvHNSIvmRE82qNjYVP0yPvJ48deYAe5piaGF2WXAguLqHPV/0FFHaFw02v6Yt1Y5GoWoJjxt3ieKfqPX3ND+k8NTaJFHqsF4LmMFTcIY+Ux8xIz13xt9aYlhOJYVPmKi3TtHSlcaPnQi6jBHfSKR1HSocl/fRtj4uYezmnVxPwHa391c39vefCM687J3XMpbOCeoxnP1oRn7J9Xl5ZV1CyHN/CyvtsD5etV3TOd42hu6jrKqhSYBWPQjoarLaJnHeMd3/KqDWZ3vr+OzhOWkYL+NGCxd2gXqQMe9aEm0Nkik+E3RoMOZPIYFSYgLi75V+wDknzNRo3KQGJOrfaPl6VO02PlANMTIfGIxo4A/5qdPehb95d8sUKMXJAU42LHwox4lLLpxZV5irg4NR7KQR2ZvJowi/4QOMk+dSnDZloZNULXtmnSzsdO0yA7ICG9d1OfvINK6STMSE74Az67Ud9rE8dxLbMrczmUlj6Y/rQDG4yEYbetWqlRC7ZGmUBtumKkadN3V3E46IcgeRrjKpXCt0G1ewqQ3yjJoNDRfRp2Gqyz2ZV4yUdSrEHGx60T8N3fe2iHOSBg/dQhwFeQXUHw8hHOOoNEyQ/snURGv8Ac3ALp6EdR+Vcr4zttNBPMqzRFG3BFd7WNXtokaRcoig743Axn8Kr4Jwyjeq3XNBttYkiedpFMYIBjcrkHzxRTpitNqis4KtmvLybU5BlI/kTI/iPX8Pzoma5DycqHYHBNTdB0uPT9IhtEH92vzN/M3ifrVdqEHwtzzKMI5z7GuiKo5JO+llAw5fCrjTx8mfCqCxzIV8qJLZQkYA6UzActUtkurbupX5UyCT6Cl1xTxPc3Ba30axnuYoz3aMAAnl1ph6i3MnJ3buD5dKGb3RXeKT4RMO+xyoGPPfzxUpSadIpFRroj9XGpaiXa4RjIDhIlXpVHJa3PKzmGRQp5WYg4Bp2z8FXUmTFHBG3LjOcfl/veu1twbdwYCpb8oAyCxPOQP4tulUsml+iPEV03yyW8jMADgIc488V2ttPu5WCwW8zZ6YjO1POw4XuoGC/2fY/y5x9RV9Dp1wicrEY/wAoGKZpfpuiSTQuItOSC6is1Q5HLIsg5hnwbfp70azX10mjRtxBbC3aNgVljcMAfPbp40dfs8AMGV3VhgqW2I+tUmo8OzXD8kLlLfqIiB19Tzbio5I36OjFJLjZS6VrVvOeSKZXPoaJLadZE69KAuJ9MueFY4pbG4aCO6kYGEKrqrAdRkHHt+VDseqaxlmGoyHPmAMfQCp6FNkfQcH2Kp9dA7h9v4hWVldCONmumdVoki+z91ZWUWZHGTrWlZWUDHle+FZWUAnMf359q61lZRQDU1xcnm61lZRMAna6B+ytMOBn4hv9NLiH7NZWVKReHo//2Q==")
          : ShowEntity("Midu",
              "data:image/jpeg;base64,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")));

  Widget buildListCategory() => Container(
        height: 150.h,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemExtent: ScreenUtil.screenWidthDp / listCategory.length,
            itemCount: listCategory.length,
            itemBuilder: (context, position) {
              return ContainerButton(
                isExpanded: true,
                title: listCategory[position].toUpperCase(),
                bgColor: ColorsUtils.menuCategory,
                bgColorFocus: ColorsUtils.menuSelect,
                textStyle: TextStylesUtils().styleMedium18Black,
                textStyleFocus: TextStylesUtils().styleMedium18White,
              );
            }),
      );

  Widget buildDetails() => Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorsUtils.brownishGrey,
          child: SvgPicture.asset(
            ImagesUtils.iconInfo,
          ),
        ),
        flex: 1,
      );

  Widget buildListData() => Container(
        height: 300.h,
        width: double.infinity,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: listData.length,
            itemBuilder: (context, position) {
              return Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: listData[position].url,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  Text(
                    listData[position].title,
                    style: TextStylesUtils().styleRegular20TextSelect,
                  )
                ],
              );
            }),
      );
}
