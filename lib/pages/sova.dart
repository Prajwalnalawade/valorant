import 'package:flutter/material.dart';

// ignore: camel_case_types
class sova extends StatefulWidget {
  const sova({super.key});

  @override
  State<sova> createState() => _sovaState();
}

// ignore: camel_case_types
class _sovaState extends State<sova> {
  @override
  void initState() {
    super.initState();
  }

  var _infomain = "Q - HUNTER'S FURY";
  var _info =
      'EQUIP a bow with three long-range wall-piercing energy blasts. FIRE to release an energy blast in a line in front of Sova, dealing damage and revealing the location of enemies caught in the line. This ability can be RE-USED up to two more times while the ability timer is active.EQUIP a bow with three long-range wall-piercing energy blasts. FIRE to release an energy blast in a line in front of Sova, dealing damage and revealing the location of enemies caught in the line. This ability can be RE-USED up to two more times while the ability timer is active.';

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
                child: Image.asset('asset/sova/sova.png'),
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
                      _buildImageButton(
                          'asset/sova/s1.png',
                          "Q - HUNTER'S FURY",
                          'EQUIP a bow with three long-range wall-piercing energy blasts. FIRE to release an energy blast in a line in front of Sova, dealing damage and revealing the location of enemies caught in the line. This ability can be RE-USED up to two more times while the ability timer is active.'),
                      _buildImageButton('asset/sova/s2.png', 'E - RECON BOLT',
                          'EQUIP a bow with recon bolt. FIRE to send the recon bolt forward, activating upon collision and Revealing the location of nearby enemies caught in the line of sight of the bolt. Enemies can destroy this bolt. HOLD FIRE to extend the range of the projectile. ALT FIRE to add up to two bounces to this arrow.'),
                      _buildImageButton('asset/sova/s3.png', 'C - OWL DRONE',
                          'EQUIP an owl drone. FIRE to deploy and take control of movement of the drone. While in control of the drone, FIRE to shoot a marking dart. This dart will Reveal the location of any player struck by the dart. Enemies can destroy the Owl Drone.'),
                      _buildImageButton(
                          'asset/sova/s4.png',
                          "X - HUNTER'S FURY",
                          'EQUIP a bow with three long-range wall-piercing energy blasts. FIRE to release an energy blast in a line in front of Sova, dealing damage and revealing the location of enemies caught in the line. This ability can be RE-USED up to two more times while the ability timer is active.'),
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
