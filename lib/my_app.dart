import 'package:flight_booking_app/core/utils/route_generator.dart';
import 'package:flight_booking_app/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_responsive.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppResponsive.init(context);
    return MaterialApp(
      // initialRoute: RouteNames.signinPage,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
