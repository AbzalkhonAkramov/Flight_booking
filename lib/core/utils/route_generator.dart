import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/presentation/auth/pages/passcode_page.dart';
import 'package:flight_booking_app/presentation/auth/pages/payment_details_page.dart';
import 'package:flight_booking_app/presentation/auth/pages/payment_successful_page.dart';
import 'package:flight_booking_app/presentation/auth/pages/signin_page.dart';
import 'package:flight_booking_app/presentation/auth/pages/transaction_details_page.dart';
import 'package:flight_booking_app/presentation/home/pages/home_page.dart';
import 'package:flight_booking_app/presentation/main_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/set_pin_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_email_and_number_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_language_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_notification_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_security_delete_account_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_security_page.dart';
import 'package:flight_booking_app/presentation/settings/pages/confirm_pin_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/auth/pages/signup_page.dart';

class AppRoute {
  final BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signinPage:
        return MaterialPageRoute(builder: (_) => const SigninPage());
      case RouteNames.signupPage:
        return MaterialPageRoute(builder: (_) => const SignupPage());
      case RouteNames.paymentDetailsPage:
        return MaterialPageRoute(builder: (_) => const PaymentDetailsPage());
      case RouteNames.passcodePage:
        return MaterialPageRoute(builder: (_) => const PasscodePage());
      case RouteNames.paymentSuccessfulPage:
        return MaterialPageRoute(builder: (_) => const PaymentSuccessfulPage());
      case RouteNames.transactionDetailsPage:
        return MaterialPageRoute(
            builder: (_) => const TransactionDetailsPage());
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteNames.mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case RouteNames.settingsPage:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case RouteNames.settingsLanguagePage:
        return MaterialPageRoute(builder: (_) => const SettingsLanguagePage());
      case RouteNames.settingsSecurityPinPage:
        return MaterialPageRoute(
            builder: (_) => const SetPinPage());
      case RouteNames.settingsEmailAndNumberPage:
        return MaterialPageRoute(
            builder: (_) => const SettingsEmailAndNumberPage());
      case RouteNames.settingsNotificationPage:
        return MaterialPageRoute(
            builder: (_) => const SettingsNotificationPage());
      case RouteNames.settingsSecurityPage:
        return MaterialPageRoute(builder: (_) => const SettingsSecurityPage());
      case RouteNames.settingsSecurityDeleteAccountPage:
        return MaterialPageRoute(
            builder: (_) => const SettingsSecurityDeleteAccountPage());
      default:
        return _errorRoute();
    }
  }

  // default error route
  Route<dynamic> _errorRoute() => MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Page not found')),
        ),
      );
}
