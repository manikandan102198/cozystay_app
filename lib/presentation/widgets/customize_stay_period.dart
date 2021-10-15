import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';

import '../themes/theme_text.dart';
import 'icons_widget.dart';

class CustomizeStayPeriod extends StatelessWidget {
  const CustomizeStayPeriod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    var width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 45.0,
          width: width / 1.7,
          decoration: WidgetConstant.kContainerDecoration,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              IconWidget(
                iconData: Icons.calendar_today_rounded,
                size: 25,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Customize Stay Period',
                style: textTheme.semiMediumBlackText,
              )
            ],
          ),
        ),
        Row(
          children: [
            IconWidget(
              size: 16,
              iconData: Icons.error_outline,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Not Planned',
              style: textTheme.greyText,
            )
          ],
        )
      ],
    );
  }
}
