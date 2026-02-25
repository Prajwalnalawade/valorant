import 'package:firebase1/widgets/customedge.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class knife extends StatefulWidget {
  const knife({super.key});

  @override
  State<knife> createState() => _knifeState();
}

// ignore: camel_case_types
class _knifeState extends State<knife> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 5, 5),
        title: Center(
          child: Text(
            'TACTICAL KNIFE',
            style: TextStyle(color: Colors.white, letterSpacing: 5),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCustomcurved(),
              child: Container(
                height: 350,
                width: 390,
                color: const Color.fromARGB(255, 240, 5, 5),
                child: SizedBox(
                  height: 400,
                  width: 450,
                  child: Image.asset('asset/subweapons/knife.png'),
                ),
              ),
            ),
            Container(
              height: 740,
              width: 390,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'TYPE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'LENGTH',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'CREDITS',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'MELEE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '46.59 cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Free',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
                        child: Text(
                          'DAMAGE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: SizedBox(
                      height: 200,
                      width: 390,
                      child: Image(
                        image: AssetImage("asset/weaponsdamage/knifeb.png"),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 20),
                        child: Text(
                          'SUMMARY',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Text(
                      "The Melee is a base melee weapon provided to every player, and cannot be dropped. It has two modes of fire: one being a fast slashing motion, and the other being a sharp jab. The primary slash has a three swing combo that loops, while the alternate slash deals more damage in a single strike but with a longer recovery and slightly smaller range and hitbox. The weapon also deals double damage when striking the target's back. Scoring a kill with this weapon rewards the same number of creds as a regular kill. All kills with any weapon skin using Melee will use the standard kill banner.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
