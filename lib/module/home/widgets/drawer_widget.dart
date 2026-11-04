import 'package:evently_app_c13_sun_7_pm/core/extensions/extensions.dart';
import 'package:evently_app_c13_sun_7_pm/core/theme/color_palette.dart';
import 'package:evently_app_c13_sun_7_pm/main.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/viewModel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    var theme =Theme.of(context).textTheme ;
    var provider =Provider.of<HomeViewModel>(context);
    return Container(
      width:  size.width*.4,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          Container(
            height: size.height*.25,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorPalette.black,
            ),
            child: Text('News App',style: theme.headlineLarge!.copyWith(color: Colors.white),),
          ),
          GestureDetector(
            onTap: (){
              navigatorKey.currentState!.pop();
              provider.gotohome();
            },
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.home_filled),
                Text('Go to home ',style: theme.headlineMedium!.copyWith(color: Colors.black,))
              ],
            ).setHorizontalPadding(context,.04),

    ),

        ],

      ),
    );
  }
}
