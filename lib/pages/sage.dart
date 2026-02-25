import 'package:flutter/material.dart';

// ignore: camel_case_types
class sage extends StatefulWidget {
  const sage({super.key});

  @override
  State<sage> createState() => _sageState();
}

// ignore: camel_case_types
class _sageState extends State<sage> {
  @override
  void initState() {
    super.initState();
  }

  var _infomain = 'Q - SLOW ORB';
  var _info =
      'EQUIP a slowing orb. FIRE to throw a slowing orb forward that detonates upon landing, creating a lingering field that slows players caught inside of it.';

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
                child: Image.asset('asset/sage/sage1.png'),
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
                      _buildImageButton('asset/sage/s1.png', 'Q - SLOW ORB',
                          'EQUIP a slowing orb. FIRE to throw a slowing orb forward that detonates upon landing, creating a lingering field that slows players caught inside of it.'),
                      _buildImageButton('asset/sage/s2.png', 'E - HEALING ORB',
                          'EQUIP a healing orb. FIRE with your crosshairs over a damaged ally to activate a heal-over-time on them. ALT FIRE while Sage is damaged to activate a self heal-over-time.'),
                      _buildImageButton('asset/sage/s3.png', 'C - BARRIER ORB',
                          'EQUIP a barrier orb. FIRE places a solid wall. ALT FIRE rotates the targeter.'),
                      _buildImageButton('asset/sage/s4.png', 'X - RESURRECTION',
                          'EQUIP a resurrection ability. FIRE with your crosshairs placed over a dead ally to begin resurrecting them. After a brief channel, the ally will be brought back to life with full health.'),
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
