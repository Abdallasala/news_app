import 'package:evently_app_c13_sun_7_pm/module/home/viewModel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/categors_data_model.dart';

class SelectecdCardWidget extends StatefulWidget {
  final CategoryDataModel selectedcatgory ;
   SelectecdCardWidget({super.key,required this.selectedcatgory});

  @override
  State<SelectecdCardWidget> createState() => _SelectecdCardWidgetState();
}

class _SelectecdCardWidgetState extends State<SelectecdCardWidget> {
  late HomeViewModel _viewModel ;
  @override
  void initState() {
    _viewModel =Provider.of<HomeViewModel>(context,listen: false);
    Future.wait([
      _viewModel.getAllSources(),
    ]).then((value)=>value[0]);
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    //var _provider =Provider.of<HomeViewModel>(context);
    return Scaffold(
      body: Column(
        children: [
          DefaultTabController(length:_viewModel.sources_list!.length ,
              child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 6.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 0),
                  tabs:_viewModel.sources_list!.map((e)=>Text(e.name),).toList()
              ),
          ),
        ],
      ),
    );
  }
}
