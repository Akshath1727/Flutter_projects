import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityScreen extends StatefulWidget {
  CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF041C32),
              Color(0xFF04293A),
              Color(0xFF064663),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blueGrey.shade100,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: kInputDecorationFormField,
                    onChanged: (value) => cityName = value,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context, cityName);
                },
                child: Text(
                  'Get Weather',
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 30, color: Colors.blueGrey.shade100),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
