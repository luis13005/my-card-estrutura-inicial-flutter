import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(
            child: Text('My Card'),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 40.0,
                  foregroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/105455585?v=4'),
                ),
              ),
              Text(
                'Luís Fernando',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Desenvolvedor Junior',
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5),
                ),
              ),
              Text(
                '________________________________',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                child: Text(''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
