import 'package:firebase1/widgets/customedge.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class operatorw extends StatefulWidget {
  const operatorw({super.key});

  @override
  State<operatorw> createState() => _operatorwState();
}

// ignore: camel_case_types
class _operatorwState extends State<operatorw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 5, 5),
        title: const Center(
          child: Text(
            'OPERATOR',
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
                  child: Image.asset('asset/subweapons/operator.png'),
                ),
              ),
            ),
            Container(
              height: 680,
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
                          width: 10,
                        ),
                        Text(
                          'Sniper Rifle',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '172.25 cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '4700',
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
                        image: AssetImage("asset/weaponsdamage/operatord.png"),
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
                      "The Operator is a high-cost sniper rifle and the most expensive gun in the game. As a sniper, it has a scope with two zoom settings on its Alternate Fire mode that has perfect accuracy when standing still. The Operator's Primary Fire accuracy on the other hand is extremely inaccurate.The Operator's power comes from its high-damage bullets, being able to instantly kill any enemy with a single shot to the body, though with its low rate of fire every missed shot comes with a cost.",
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
