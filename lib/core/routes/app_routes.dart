import 'package:evently_app_c13_sun_7_pm/core/routes/pages_routes_name.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/home_view.dart';
import 'package:flutter/material.dart';
import '../../module/splash/splash_view.dart';
abstract class AppRoutes {
  static Route onGenrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: ((context) => const SplashView()),
          settings: settings,
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: ((context) => const HomeView()),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: ((context) => const SplashView()),
          settings: settings,
        );
    }
  }
}
