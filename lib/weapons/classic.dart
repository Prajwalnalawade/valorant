import 'package:firebase1/widgets/customedge.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class classic extends StatefulWidget {
  const classic({super.key});

  @override
  State<classic> createState() => _classicState();
}

// ignore: camel_case_types
class _classicState extends State<classic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 5, 5),
        title: const Center(
          child: Text(
            'CLASSIC',
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
                  child: Image.asset('asset/subweapons/classic.png'),
                ),
              ),
            ),
            Container(
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
                          'SIDEARM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '30.92 cm',
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(14, 30, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'FIRE MODE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 34,
                        ),
                        Text(
                          'FIRE RATE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'RELOAD SPEED',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 5, 5),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'SEMI-AUTOMATIC',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          '6.75 sec',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '1.75 sec',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 40, 0, 20),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '0 - 30 m',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '30 - 50 m',
                        style: TextStyle(
                          color: Colors.white,
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
                        image: AssetImage("asset/weaponsdamage/classicb.png"),
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
                      "The Classic is a pistol that all players receive upon spawning. It has two firing modes, a standard semi-automatic single-bullet primary fire and a semi-automatic shotgun alternate fire that fires three bullets instantly but only at around a third of its usual fire rate.Despite what may be suggested about its strength by the Classic being the gun given away for free, it is actually a versatile sidearm. Whilst the other sidearms are usually suited for a particular range, the Classic can be used in medium range engagements thanks to its large falloff range but can also quickly dispatch an enemy at close range using its shotgun mode.",
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
