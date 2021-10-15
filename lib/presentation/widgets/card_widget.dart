import '../../common/widget_constant.dart';
import '../themes/app_color.dart';
import 'request_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height / 3.5,
      child: ListView.builder(
          padding: const EdgeInsets.all(5.0),
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, i) {
            return Container(
              height: 150.0,
              width: 320.0,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: WidgetConstant.kContainerDecoration.copyWith(
                  color: i == 1 ? AppColor.silverColor : AppColor.bronzeColor),
              child: Stack(
                children: [
                  Image.asset('assets/images/desing.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Bronze',
                            style: textTheme.bodyText2,
                          ),
                          ButtonWidget(
                            title: 'Select',
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Rent Amount:',
                            style: textTheme.headline3,
                          ),
                          Text(
                            '₹2500/-',
                            style: textTheme.headline3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Deposit: ',
                            style: textTheme.headline3,
                          ),
                          Text(
                            '₹2500/-',
                            style: textTheme.headline3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Discount',
                            style: textTheme.headline3,
                          ),
                          Text(
                            '₹500/-',
                            style: textTheme.headline3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Total Payable',
                            style: textTheme.bodyText2,
                          ),
                          Text(
                            '₹4500/-',
                            style: textTheme.headline3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
