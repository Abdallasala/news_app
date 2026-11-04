import 'package:evently_app_c13_sun_7_pm/Network/app_network.dart';
import 'package:evently_app_c13_sun_7_pm/core/extensions/padding_ext.dart';
import 'package:evently_app_c13_sun_7_pm/core/theme/color_palette.dart';
import 'package:evently_app_c13_sun_7_pm/models/categors_data_model.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/viewModel/home_view_model.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/widgets/category_home%20_view.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/widgets/drawer_widget.dart';
import 'package:evently_app_c13_sun_7_pm/module/home/widgets/selectecd_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView ({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<HomeViewModel>(context);
    var theme =Theme.of(context).textTheme ;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>AppNetwork.getsources("sports")),
      appBar: AppBar(
        
        title: Text(provider.selectdatamodel ==null?'Home':provider.selectdatamodel!.categoryName),
        actions: [Icon(Icons.search,size: 30,).setHorizontalPadding(context,.001)],
      ),
      drawer: DrawerWidget(),
      body: provider.selectdatamodel ==null?
   CategoryHomeView(categoryDataModelList:provider.categoryDataModelList,onClickableCategory:provider. onChangedCliecked,)
      :  SelectecdCardWidget (selectedcatgory: provider.selectdatamodel!,),
    );
  }

}
