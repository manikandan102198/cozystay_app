import '../../common/widget_constant.dart';
import '../themes/app_color.dart';
import 'package:flutter/material.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          height: 150.0,
          margin: const EdgeInsets.all(5.0),
          decoration: WidgetConstant.kContainerDecoration,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Have any special requests?',
                    style: textTheme.headline5,
                  ),
                ),
              ),
              Container(
                height: 110,
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      hintText: 'Text Here',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                ),
              ),
            ],
          ),
        ),
        ButtonWidget(
          title: 'Continue',
          color: colorTheme.primaryColor,
        )
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Text(
        '$title',
        style: textTheme.bodyText2!.copyWith(
            color: title == 'Continue' ? Colors.white : AppColor.bronzeColor),
      ),
      color: color,
    );
  }
}
