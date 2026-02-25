// ignore: file_names
import 'package:firebase1/weapons/classic.dart';
import 'package:firebase1/weapons/ghost.dart';
import 'package:firebase1/weapons/sheriff.dart';
import 'package:firebase1/weapons/phantom.dart';
import 'package:firebase1/weapons/operator.dart';

import 'package:firebase1/weapons/knife.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeaponModel {
  String iconPath;
  Widget con;

  WeaponModel({required this.iconPath, required this.con});

  static List<WeaponModel> getWeapons() {
    List<WeaponModel> weapons = [];

    weapons.add(WeaponModel(
        iconPath: 'asset/weapons/TacticalKnife.png', con: const knife()));

    weapons.add(
        WeaponModel(iconPath: 'asset/weapons/classic1.png', con: classic()));

    weapons
        .add(WeaponModel(iconPath: 'asset/weapons/ghost1.png', con: ghost()));

    weapons.add(
        WeaponModel(iconPath: 'asset/weapons/sheriff1.png', con: sheriff()));

    weapons.add(
        WeaponModel(iconPath: 'asset/weapons/Phantom1.png', con: phantom()));

    weapons.add(
        WeaponModel(iconPath: 'asset/weapons/operator1.png', con: operatorw()));

    return weapons;
  }
}
