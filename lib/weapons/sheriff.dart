import 'package:firebase1/widgets/customedge.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sheriff extends StatefulWidget {
  const sheriff({super.key});

  @override
  State<sheriff> createState() => _sheriffState();
}

// ignore: camel_case_types
class _sheriffState extends State<sheriff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 5, 5),
        title: const Center(
          child: Text(
            'SHERIFF',
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
                  child: Image.asset('asset/subweapons/sherif.png'),
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
                          width: 15,
                        ),
                        Text(
                          'Sidearm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '42.53 cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          '800',
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
                        image:
                            AssetImage("asset/weaponsdamage/sheriffdamage.png"),
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
                      "The Sheriff is a semi-automatic revolver and the most expensive sidearm in the game. Able to kill enemies with a single bullet to the head at most ranges and health totals, it can be used to challenge even enemies who have full-bought. It's high penetration and extra reserve magazine also makes it useful for spamming for wallbangs during pistol or eco rounds. With a low-capacity magazine and low fire rate however, even one missed shot can end up being punishing. The Sheriff's high recoil and spread also promotes exceptional control and precision in order to use it when fighting multiple enemies.",
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
