import 'package:flutter/material.dart';
import '../../common/message_constants.dart';
import '../../common/widget_constant.dart';
import '../themes/app_color.dart';
import 'details_widget.dart';
import 'divider_widget.dart';

class CustomerDetailsWidget extends StatelessWidget {
  const CustomerDetailsWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: height / 3.5,
      margin: const EdgeInsets.all(10.0),
      decoration: WidgetConstant.kContainerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.calendar_today_sharp,
                      size: 20,
                      color: colorTheme.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Date of joining',
                    style: textTheme.subtitle1,
                  ),
                ],
              ),
              Text(
                ':',
                style: textTheme.caption,
              ),
              Container(
                height: 40.0,
                width: 140.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColor.yellow,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
                child: Text(
                  '12 | 04 | 2021',
                  style: textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          DividerWidget(),
          DetailsWidget(
            title: 'Guest Name',
            name: 'Sudarsan R',
            iconData: Icons.person,
          ),
          DividerWidget(),
          DetailsWidget(
            title: 'Room Details',
            name: '${MessageConstant.lorem}',
            iconData: Icons.home,
          ),
        ],
      ),
    );
  }
}
