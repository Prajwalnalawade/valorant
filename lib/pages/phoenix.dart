import 'package:flutter/material.dart';

// ignore: camel_case_types
class phoenix extends StatefulWidget {
  const phoenix({super.key});

  @override
  State<phoenix> createState() => _phoenixState();
}

// ignore: camel_case_types
class _phoenixState extends State<phoenix> {
  @override
  void initState() {
    super.initState();
  }

  var _infomain = 'Q - CURVEBALL';
  var _info =
      'EQUIP a flare orb that takes a curving path and detonates shortly after throwing. FIRE to curve the flare orb to the left, detonating and blinding any player who sees the orb. ALTERNATE FIRE to curve the flare orb to the right.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: Text(
            'THE AGENTS',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                height: 420,
                width: 450,
                child: Image.asset('asset/phoenix/phoenix.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  color: const Color.fromRGBO(35, 47, 52, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildImageButton('asset/phoenix/p1.png', 'Q - CURVEBALL',
                          'EQUIP a flare orb that takes a curving path and detonates shortly after throwing. FIRE to curve the flare orb to the left, detonating and blinding any player who sees the orb. ALTERNATE FIRE to curve the flare orb to the right.'),
                      _buildImageButton('asset/phoenix/p2.png', 'E - HOT HANDS',
                          'EQUIP a fireball. FIRE to throw a fireball that explodes after a set amount of time or upon hitting the ground, creating a lingering fire zone that damages enemies.'),
                      _buildImageButton('asset/phoenix/p3.png', 'C - BLAZE',
                          'EQUIP a flame wall. FIRE to create a line of flame that moves forward, creating a wall of fire that blocks vision and damages players passing through it. HOLD FIRE to bend the wall in the direction of your crosshair.'),
                      _buildImageButton(
                          'asset/phoenix/p4.png',
                          'X - RUN IT BACK',
                          'INSTANTLY place a marker at Phoenix’s location. While this ability is active, dying or allowing the timer to expire will end this ability and bring Phoenix back to this location with full health.'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      color: const Color.fromRGBO(35, 47, 52, 1),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                        child: Text(
                          _infomain,
                          style: const TextStyle(
                            fontSize: 29,
                            color: Colors.white,
                            letterSpacing: .9,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromRGBO(35, 47, 52, 1),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 30),
                        child: Text(
                          _info,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageButton(String imagePath, String infomain, String info) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _infomain = infomain;
          _info = info;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          imagePath,
          width: 70,
          height: 70,
        ),
      ),
    );
  }
}
