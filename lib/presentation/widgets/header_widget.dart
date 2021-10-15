import '../../common/message_constants.dart';
import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height / 2.5,
      child: Stack(
        children: [
          Container(
            height: height / 3.0,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/house.png',
                  fit: BoxFit.fill,
                  width: width,
                ),
                Positioned(
                    top: 0,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ))),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              margin: const EdgeInsets.all(10.0),
              decoration: WidgetConstant.kContainerDecoration,
              child: Row(children: [
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/images/gobal.png'),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            'Cozy stay bangaluru',
                            style: textTheme.headline6,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${MessageConstant.msg}',
                              maxLines: 4,
                              textAlign: TextAlign.start,
                              style: textTheme.caption,
                            ),
                          ),
                        ),
                      ]),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/outline.png'),
                        Positioned(
                          top: 10,
                          right: 5,
                          child: Text(
                            'Cozy Guaranteed',
                            style: textTheme.bodyText1,
                          ),
                        ),
                        Positioned(
                            left: 10,
                            bottom: 2,
                            child: Image.asset('assets/images/thumbs.png')),
                      ],
                    )),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
