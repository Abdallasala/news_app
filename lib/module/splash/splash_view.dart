import 'dart:async';
import 'package:flutter/material.dart';
import '../../core/routes/pages_routes_name.dart';
import '../../main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _checkNavigation();
  }

  Future<void> _checkNavigation() async {
    // 1- Always display SplashView for 2 seconds first
    await Future.delayed(const Duration(seconds: 2));
   // bool isFirst = await SharedPrefHelper.isFirstTime();

      navigatorKey.currentState!.pushNamedAndRemoveUntil(RoutesName.home, (route)=>false);
    }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
             "assets/images/news_logo.png",
              height: size.height * .22,
            ),
          ],
        ),
      ),
    );
  }
}
