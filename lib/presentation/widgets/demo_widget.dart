import '../../common/widget_constant.dart';
import 'icons_widget.dart';
import 'package:flutter/material.dart';

class DemoWidget extends StatelessWidget {
  const DemoWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'How does it work?',
            style: textTheme.headline5,
          ),
        ),
        Container(
          height: height / 3.0,
          margin: const EdgeInsets.all(5.0),
          decoration: WidgetConstant.kContainerDecoration,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleWidget(
                      title: 'Select the date of move-in',
                    ),
                    TitleWidget(
                      title: '  Choose room occupancy',
                    ),
                    TitleWidget(
                      title: '               Confirm booking',
                    ),
                    TitleWidget(
                      title: '                Pay the amount',
                    ),
                    TitleWidget(title: '       Get ready to move in'),
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset('assets/images/info.png'),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          IconWidget(iconData: Icons.circle, size: 9),
          SizedBox(
            width: 25,
          ),
          Text(
            '$title',
            textAlign: TextAlign.start,
            style: textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
