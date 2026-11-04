import 'package:bot_toast/bot_toast.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/viewModel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import 'core/routes/app_routes.dart';
import 'core/theme/app_theme_manager.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(ChangeNotifierProvider(create: (context)=> HomeViewModel() ,child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<HomeViewModel>(context);
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenrateRoute,
      theme: AppThemeManager.lightTheme,
      darkTheme: AppThemeManager.darkTheme,
      themeMode: provider.current_theme,
      builder: EasyLoading.init(
        builder: BotToastInit(),
      ),
    );
  }
}




