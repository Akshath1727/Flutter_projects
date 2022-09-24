import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(156, 23, 87, 170),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(156, 84, 152, 225),
          elevation: 5.0,
          title: Center(
            child: Text(
              'Contact Card',
              style: GoogleFonts.abel(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 30),
                const CircleAvatar(
                    backgroundImage: AssetImage('images/sham.jpg'), radius: 50),
                Text(
                  "Shamanth G M",
                  style: GoogleFonts.pacifico(
                      color: Color.fromRGBO(255, 195, 0, 100), fontSize: 30.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Text(
                  "Web developer".toUpperCase(),
                  style: GoogleFonts.sourceSansPro(
                      color: Color.fromRGBO(255, 195, 0, 100),
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
