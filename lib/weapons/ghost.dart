import 'package:firebase1/widgets/customedge.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ghost extends StatefulWidget {
  const ghost({super.key});

  @override
  State<ghost> createState() => _ghostState();
}

// ignore: camel_case_types
class _ghostState extends State<ghost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 5, 5),
        title: const Center(
          child: Text(
            'GHOST',
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
                  child: Image.asset('asset/subweapons/ghost.png'),
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
                          width: 10,
                        ),
                        Text(
                          'SIDEARM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          '65.4 cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          '500',
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
                          width: 55,
                        ),
                        Text(
                          'SEMI',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          '6.75 sec',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '1.5 sec',
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
                        image: AssetImage("asset/weaponsdamage/ghostb.png"),
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
                      "The Ghost is a low-cost semi-automatic pistol. Equipped with a large magazine and a silencer, it can be used to spam through vision blockers without much risk to the player's ammo count or positioning.Whilst proficient at all ranges, it is especially good for picking off long-range enemies, though at shorter ranges it does not offer much more power than a Classic outside of pistol rounds. Compared to the costlier Sheriff, the Ghost is less powerful in pistol rounds but isn't too far behind in power when used against fully-shielded enemies unless you can hit your headshots. The Ghost's higher fire rate, larger magazine capacity, and lower max spread also make it more forgiving if the player misses some of their shots.",
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
