import '../themes/app_color.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key, required this.iconData, required this.size})
      : super(key: key);
  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    return Icon(
      iconData,
      size: size,
      color: iconData == Icons.error_outline
          ? AppColor.mediumGreyColor
          : colorTheme.primaryColor,
    );
  }
}
