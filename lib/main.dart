import 'dart:async';
import 'package:flutter/material.dart';
import 'package:asincroniaflutter/services/mockapi.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int textorayo = 0;
  double anchorayo = 0;
  int segundosrayo = 0;
  int rayo = 0;
  int textovehiculo = 0;
  double anchovehiculo = 0;
  int segundosvehiculo = 0;
  int vehiculo = 0;
  int textopersona = 0;
  double personaancho = 0;
  int personasegundos = 0;
  int persona = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daniel Baque 7moB',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AsincroniaFlutter Daniel Baque",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      setState(() {
                        anchorayo = 200;
                        segundosrayo = 1;
                      });
                      rayo = await MockApi().getFerrariInteger();
                      setState(() {
                        textorayo = rayo;
                        anchorayo = 0;
                        segundosrayo = 0;
                      });
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.flash_on,
                      color: Colors.black,
                    ),
                  ),
                  AnimatedContainer(
                    width: anchorayo,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.green),
                    duration: Duration(seconds: segundosrayo),
                  ),
                  Text(
                    textorayo.toInt().toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 25.0),
                  ),
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          anchovehiculo = 200;
                          segundosvehiculo = 3;
                        });
                        vehiculo = await MockApi().getHyundaiInteger();
                        setState(() {
                          textovehiculo = vehiculo;
                          anchovehiculo = 0;
                          segundosvehiculo = 0;
                        });
                      },
                      backgroundColor: Colors.yellow,
                      child: const Icon(
                        Icons.airport_shuttle,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: anchovehiculo,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.yellow),
                    duration: Duration(seconds: segundosvehiculo),
                  ),
                  Text(
                    textovehiculo.toInt().toString(),
                    style:
                        const TextStyle(color: Colors.yellow, fontSize: 25.0),
                  )
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          personaancho = 200;
                          personasegundos = 10;
                        });
                        persona = await MockApi().getFisherPriceInteger();
                        setState(() {
                          textopersona = persona;
                          personaancho = 0;
                          personasegundos = 0;
                        });
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.directions_walk,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: personaancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.red),
                    duration: Duration(seconds: personasegundos),
                  ),
                  Text(
                    textopersona.toInt().toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 25.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
