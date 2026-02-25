import 'package:flutter/material.dart';

// ignore: camel_case_types
class skye extends StatefulWidget {
  const skye({super.key});

  @override
  State<skye> createState() => _skyeState();
}

// ignore: camel_case_types
class _skyeState extends State<skye> {
  @override
  void initState() {
    super.initState();
  }

  var _infomain = 'Q - TRAILBLAZER';
  var _info =
      'EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator. While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies.';

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
                child: Image.asset('asset/skye/skye2.png'),
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
                          'asset/skye/skyea1.png',
                          'Q - TRAILBLAZER',
                          'EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator. While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies.'),
                      _buildImageButton(
                          'asset/skye/skyeb1.png',
                          'E - GUIDING LIGHT',
                          'EQUIP a hawk trinket. FIRE to send it forward. HOLD FIRE to guide the hawk in the direction of your crosshair. RE-USE while the hawk is in flight to transform it into a flash that plays a hit confirm if an enemy was within range and line of sight.'),
                      _buildImageButton('asset/skye/skyec1.png', 'C - REGROWTH',
                          'EQUIP a healing trinket. HOLD FIRE to channel, healing allies in range and line of sight. Can be reused until her healing pool is depleted. Skye cannot heal herself.'),
                      _buildImageButton('asset/skye/skyed1.png', 'X - SEEKERS',
                          'EQUIP a Seeker trinket. FIRE to send out three Seekers to track down the three closest enemies. If a Seeker reaches its target, it Nearsights them. Enemies can destroy the Seekers.'),
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
