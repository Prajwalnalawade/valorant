import 'package:firebase1/models/Weapon_Model.dart';
import 'package:firebase1/models/category_model.dart';
import 'package:firebase1/models/maps.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  TabBarExample({super.key});

  static List<CategoryModel> categories = [];
  static List<WeaponModel> weapons = [];
  static List<mapsModel> mapss = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    weapons = WeaponModel.getWeapons();
    mapss = mapsModel.getWeapons();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Color(0xff011333FF),
          appBar: AppBar(
            title: const Text('VALORENT'),
            toolbarHeight: 80,
            backgroundColor: Color(0xff011333FF),
            foregroundColor: Colors.white,
            bottom: const TabBar(
              dividerColor: Colors.black,
              dividerHeight: 30,
              indicatorColor: Colors.deepOrange,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0, color: Colors.red),
                insets: EdgeInsets.symmetric(horizontal: 70.0, vertical: 10),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Weapons',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Agents',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Maps',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: 600,
                    child: ListView.separated(
                      itemCount: weapons.length,
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 25,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: InkWell(
                                  child: Container(
                                    height: 180,
                                    width: 300,
                                    child: Image.asset(
                                      weapons[index].iconPath,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: weapons[index].con,
                                        type: PageTransitionType.bottomToTop,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              //Agents

              Center(
                child: Container(
                  height: 400,
                  child: ListView.separated(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 25,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 400,
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Container(
                                height: 400,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(606),
                                ),
                                child: Image.asset(
                                  categories[index].iconPath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    child: categories[index].con,
                                    type: PageTransitionType.bottomToTop,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: 600,
                    child: ListView.separated(
                      itemCount: weapons.length,
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 25,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: InkWell(
                                  child: Container(
                                    height: 180,
                                    width: 300,
                                    child: Image.asset(
                                      mapss[index].iconPath,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: mapss[index].con,
                                        type: PageTransitionType.bottomToTop,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
