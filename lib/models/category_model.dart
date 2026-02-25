import 'package:firebase1/pages/brimstone.dart';
import 'package:firebase1/pages/cypher.dart';
import 'package:firebase1/pages/phoenix.dart';
import 'package:firebase1/pages/sova.dart';
import 'package:firebase1/pages/viper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase1/pages/sage.dart';
import 'package:firebase1/pages/skye.dart';

class CategoryModel {
  String name;
  String iconPath;
  Widget con;

  CategoryModel(
      {required this.name, required this.iconPath, required this.con});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Pie',
        iconPath: 'asset/mainassets/brimstone.png',
        con: brimstone()));

    categories.add(CategoryModel(
        name: 'Pie', iconPath: 'asset/mainassets/phoenix.png', con: phoenix()));

    categories.add(CategoryModel(
        name: 'Smoothies', iconPath: 'asset/sage1.png', con: sage()));

    categories.add(CategoryModel(
        name: 'Pie', iconPath: 'asset/mainassets/sova.png', con: sova()));

    categories.add(CategoryModel(
        name: 'Pie', iconPath: 'asset/mainassets/viper.png', con: viper()));

    categories.add(CategoryModel(
        name: 'Pie', iconPath: 'asset/mainassets/cypher.png', con: cypher()));

    categories.add(
        CategoryModel(name: 'Pie', iconPath: 'asset/skye1.png', con: skye()));

    return categories;
  }
}
