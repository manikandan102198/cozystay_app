import 'package:flutter/material.dart';

import '../themes/theme_text.dart';
import 'icons_widget.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
    required this.title,
    required this.name,
    required this.iconData,
  }) : super(key: key);

  final String title;
  final String name;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconWidget(
              iconData: iconData,
              size: 20,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$title',
            style: textTheme.subtitle1,
          ),
        ],
      ),
      Spacer(),
      Text(
        ':',
        style: textTheme.caption,
      ),
      Spacer(),
      if (title == 'Guest Name')
        Text(
          '$name',
          textAlign: TextAlign.justify,
          maxLines: 3,
          style: title == 'Guest Name'
              ? textTheme.mediumBlackText
              : textTheme.subtitle1,
        )
      else
        Container(
          width: 150,
          padding: const EdgeInsets.all(3.0),
          child: Text(
            '$name',
            textAlign: TextAlign.justify,
            maxLines: 3,
            style: textTheme.subtitle1,
          ),
        ),
      if (title == 'Guest Name') Spacer(),
    ]);
  }
}
