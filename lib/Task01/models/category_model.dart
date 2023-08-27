import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconpath;
  Color boxColor;
  CategoryModel({
    required this.name,
    required this.iconpath,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(
      CategoryModel(
        name: 'Salad',
        iconpath: 'assets/app01/icons/plate.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Cake',
        iconpath: 'assets/app01/icons/pancakes.svg',
        boxColor: const Color(0xffC588F2),
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Pie',
        iconpath: 'assets/app01/icons/pie.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Smoothies',
        iconpath: 'assets/app01/icons/orange-snacks.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );
    return categories;
  }
}
