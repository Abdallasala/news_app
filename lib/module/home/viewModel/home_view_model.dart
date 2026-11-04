import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/categors_data_model.dart';

class HomeViewModel extends ChangeNotifier{
  CategoryDataModel ?_selectdatamodel ;
  ThemeMode current_theme = ThemeMode.light;
  final List<String> _listTheme = ["Light", "Dark"];
  List<String> get listTheme => _listTheme;
  final List<CategoryDataModel> _categoryDataModelList =[
    CategoryDataModel(categoryID: 'general',
        categoryName: "General",
        categoryImage: "assets/images/general_img.png"),
    CategoryDataModel(categoryID: 'sports',
        categoryName: "Sports",
        categoryImage: "assets/images/sports_img.png"),
    CategoryDataModel(categoryID: 'health',
        categoryName: "Health",
        categoryImage: "assets/images/health_img.png"),
    CategoryDataModel(categoryID: 'business',
        categoryName: "Business",
        categoryImage: "assets/images/buisness_img.png"),
    CategoryDataModel(categoryID: 'entertainment',
        categoryName: "Entertainment",
        categoryImage: "assets/images/entertainment_img.png"),
    CategoryDataModel(categoryID: 'science',
        categoryName: "Science",
        categoryImage: "assets/images/science_img.png"),
    CategoryDataModel(categoryID: 'technology',
        categoryName: "Technology",
        categoryImage: "assets/images/technology_img.png"),
  ];
  CategoryDataModel? get selectdatamodel=> _selectdatamodel ;
  List<CategoryDataModel>get categoryDataModelList => _categoryDataModelList;
  void onChangedCliecked (CategoryDataModel selectedCategoryDataModel){
    _selectdatamodel =selectedCategoryDataModel ;
    notifyListeners();
  }
  void gotohome(){
    _selectdatamodel =null ;
    notifyListeners();
  }
  void setCurrentTheme(ThemeMode newTheme) {
    if (current_theme == newTheme) return;
    current_theme = newTheme;
    notifyListeners();
  }
  bool isDark() {
    return current_theme == ThemeMode.dark;
  }
  void toggleTheme() {
    if (isDark()) {
      setCurrentTheme(ThemeMode.light);
    } else {
      setCurrentTheme(ThemeMode.dark);
    }
  }
}