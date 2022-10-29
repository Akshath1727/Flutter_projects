// import 'package:clima/screens/city_screen.dart';
import 'package:flutter/material.dart';
import "package:clima/screens/loading_screen.dart";
// import "package:clima/screens/location_screen.dart";

void main() {
  runApp(Clima());
}

class Clima extends StatelessWidget {
  const Clima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
      theme: ThemeData.dark(),
    );
  }
}
