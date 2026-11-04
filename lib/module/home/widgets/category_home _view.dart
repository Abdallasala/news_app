import 'package:evently_app_c13_sun_7_pm/models/categors_data_model.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/padding_ext.dart';
import '../../../core/theme/color_palette.dart';

class CategoryHomeView extends StatelessWidget {
  final  List <CategoryDataModel> categoryDataModelList ;
  final void Function(CategoryDataModel) onClickableCategory;
  CategoryHomeView({super.key,required this.categoryDataModelList,required this.onClickableCategory});

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context).textTheme ;
    return    SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning \n Here is Some News For You',
              style: theme.titleLarge!.copyWith(
                  color: ColorPalette.primaryColor
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>
                    Stack(
                      alignment:index %2 ==0 ?Alignment.bottomRight :Alignment.bottomLeft,
                      children: [
                        Image.asset(categoryDataModelList[index].categoryImage),
                        Container(
                          height:60 ,
                          width: 120,
                          margin:const  EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusGeometry.circular(84),
                            color: ColorPalette.white.withOpacity(.5),
                          ),

                          child: Directionality(
                            textDirection: index%2 ==0 ?TextDirection.ltr:TextDirection.rtl,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 5,),
                                Text("View All ",style: theme.titleMedium,),
                                GestureDetector(
                                  onTap: (){
                         onClickableCategory (categoryDataModelList[index]) ;
                                  },
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorPalette.white,
                                    ),
                                    child: Icon(Icons.arrow_forward_ios,),
                                  ),
                                ),
                              ],),
                          ),
                        )
                      ],
                    ),
                separatorBuilder:(context,index)=>SizedBox(height: 20,),
                itemCount: categoryDataModelList.length),
          ],
        ).setHorizontalAndVerticalPadding(context, .02,.03));
  }
}
