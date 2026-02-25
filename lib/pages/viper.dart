import 'package:flutter/material.dart';

// ignore: camel_case_types
class viper extends StatefulWidget {
  const viper({super.key});

  @override
  State<viper> createState() => _viperState();
}

// ignore: camel_case_types
class _viperState extends State<viper> {
  @override
  void initState() {
    super.initState();
  }

  var _infomain = "Q - POISON CLOUD";
  var _info =
      'EQUIP a gas emitter. FIRE to throw the emitter that perpetually remains throughout the round. RE-USE the ability to create a toxic gas cloud at the cost of fuel. This ability can be picked up to be REDEPLOYED before the round starts and can be RE-USED more than once throughout the round.';

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
                child: Image.asset('asset/viper/viper.png'),
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
                          'asset/viper/s1.png',
                          "Q - POISON CLOUD",
                          'EQUIP a gas emitter. FIRE to throw the emitter that perpetually remains throughout the round. RE-USE the ability to create a toxic gas cloud at the cost of fuel. This ability can be picked up to be REDEPLOYED before the round starts and can be RE-USED more than once throughout the round.'),
                      _buildImageButton(
                          'asset/viper/s2.png',
                          'E - TOXIC SCREEN',
                          'EQUIP a gas emitter launcher. FIRE to deploy a long line of gas emitters. RE-USE the ability to create a tall wall of toxic gas at the cost of fuel. This ability can be RE-USED more than once.'),
                      _buildImageButton('asset/viper/s3.png', 'C - SNAKE BITE',
                          'EQUIP a chemical launcher. FIRE to launch a canister that shatters upon hitting the floor, creating a lingering chemical zone that damages and slows enemies.'),
                      _buildImageButton('asset/viper/s4.png', "X - VIPER'S PIT",
                          'EQUIP a chemical sprayer. FIRE to spray a chemical cloud in all directions around Viper, creating a large cloud that reduces the vision range and maximum health of players inside of it.'),
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
