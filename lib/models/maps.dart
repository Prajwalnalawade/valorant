import 'package:firebase1/maps/breeze.dart';
import 'package:firebase1/maps/fracture.dart';
import 'package:firebase1/maps/lotus.dart';
import 'package:firebase1/maps/pearl.dart';
import 'package:firebase1/maps/bind.dart';
import 'package:firebase1/maps/sunset.dart';
import 'package:flutter/material.dart';

class mapsModel {
  String iconPath;
  Widget con;

  mapsModel({required this.iconPath, required this.con});

  static List<mapsModel> getWeapons() {
    List<mapsModel> mapss = [];

    mapss.add(
        mapsModel(iconPath: 'asset/outsidemap/bind.png', con: const bindmap()));

    mapss.add(mapsModel(
        iconPath: 'asset/outsidemap/sunset.png', con: const sunsetmap()));

    mapss.add(
        mapsModel(iconPath: 'asset/outsidemap/lotus.png', con: lotusmap()));

    mapss.add(
        mapsModel(iconPath: 'asset/outsidemap/pearl.png', con: pearlmap()));

    mapss.add(mapsModel(
        iconPath: 'asset/outsidemap/fracture.png', con: fracturemap()));

    mapss.add(
        mapsModel(iconPath: 'asset/outsidemap/breze.png', con: breezemap()));

    return mapss;
  }
}
