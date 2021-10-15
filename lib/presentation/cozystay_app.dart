import 'package:flutter/material.dart';

import '/presentation/journey/home_screen.dart';
import 'themes/app_color.dart';
import 'themes/theme_text.dart';

class CozystayApp extends StatelessWidget {
  const CozystayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cozystay App',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: AppColor.yellow,
          scaffoldBackgroundColor: AppColor.bgColor,
          fontFamily: 'Metropolis',
          textTheme: ThemeText.getTextTheme(),
          appBarTheme: AppBarTheme(elevation: 0.0)),
      home: HomeScreen(),
    );
  }
}
