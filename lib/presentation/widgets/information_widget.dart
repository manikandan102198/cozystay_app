import '../../common/message_constants.dart';
import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Important information',
            style: textTheme.headline5,
          ),
        ),
        Container(
          height: height / 3.5,
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: WidgetConstant.kContainerDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Text('${MessageConstant.lorem} ${MessageConstant.msg}',
                    maxLines: 4, style: textTheme.subtitle1),
              ),
              Expanded(
                child: Text('${MessageConstant.lorem} ${MessageConstant.msg}',
                    maxLines: 3, style: textTheme.subtitle1),
              ),
              Expanded(
                child: Text('${MessageConstant.lorem} ${MessageConstant.msg}',
                    maxLines: 3, style: textTheme.subtitle1),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'See All',
                    style: textTheme.subtitle2,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
