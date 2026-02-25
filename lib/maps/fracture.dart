import 'package:flutter/material.dart';

class fracturemap extends StatefulWidget {
  const fracturemap({super.key});

  @override
  State<fracturemap> createState() => _fracturemapState();
}

// ignore: camel_case_types
class _fracturemapState extends State<fracturemap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color.fromRGBO(35, 47, 52, 1),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: Text(
            'Fracture Map',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(35, 47, 52, 1),
        height: 1200,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: InteractiveViewer(
            maxScale: 5.0,
            minScale: 0.01,
            child: Image.asset('asset/mapsinside/fracture.png'),
          ),
        ),
      ),
    );
  }
}
