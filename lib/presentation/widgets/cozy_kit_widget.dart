import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';
import '../themes/theme_text.dart';

import 'icons_widget.dart';

class CozyKitWidget extends StatelessWidget {
  const CozyKitWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: height / 2.5,
      padding: const EdgeInsets.all(4.0),
      color: colorTheme.primaryColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Cozy Kit',
                        style: textTheme.boldBlackText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconWidget(
                        size: 16,
                        iconData: Icons.error_outline,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 250,
                    child: Text(
                      'Make Your Move-In Hassle-Free by Carting Your Living Essentials With Cozy Kit',
                      maxLines: 2,
                      style: textTheme.headline4,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '₹999/-',
                    style: textTheme.brownText,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      children: [
                        Text(
                          'Add',
                          style: textTheme.semiBoldwhiteText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.add_circle_outline_rounded,
                            color: Colors.white, size: 20)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: height / 2.5 / 1.5,
            margin: const EdgeInsets.all(5.0),
            child: GridView.builder(
              itemCount: 12,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1.5),
              itemBuilder: (context, i) {
                return Container(
                  height: 75,
                  margin: const EdgeInsets.all(5.0),
                  decoration: WidgetConstant.kContainerDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/icons/bedsheet.png',
                      ),
                      Text(
                        'Bedsheet',
                        style:
                            textTheme.headline4!.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
