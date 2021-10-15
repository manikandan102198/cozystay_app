import '../widgets/card_widget.dart';
import '../widgets/cozy_kit_widget.dart';
import '../widgets/customer_details_widget.dart';
import '../widgets/customize_stay_period.dart';
import '../widgets/demo_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/information_widget.dart';
import '../widgets/request_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HeaderWidget(
              height: height,
              width: width,
            ),
            CustomerDetailsWidget(
              height: height,
            ),
            CardWidget(
              height: height,
            ),
            CardWidget(
              height: height,
            ),
            CustomizeStayPeriod(),
            InformationWidget(),
            SizedBox(
              height: 10,
            ),
            CozyKitWidget(
              height: height,
            ),
            DemoWidget(
              height: height,
            ),
            RequestWidget(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
