import 'package:flutter/material.dart';

class lotusmap extends StatefulWidget {
  const lotusmap({super.key});

  @override
  State<lotusmap> createState() => _lotusmapState();
}

// ignore: camel_case_types
class _lotusmapState extends State<lotusmap> {
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
            'Lotus Map',
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
            child: Image.asset('asset/mapsinside/lotus.png'),
          ),
        ),
      ),
    );
  }
}
