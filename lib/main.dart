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
              SizedBox(
                child: Divider(color: Colors.white),
                width: 280.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
                child: ListTile(
                  leading: Icon(Icons.phone,
                      size: 15.0, color: Colors.blueGrey[900]),
                  title: Text(
                    '65 98140-7117',
                    style: TextStyle(color: Colors.blueGrey[900]),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 3.5, horizontal: 100.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 15.0,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    'l_fp9999@hotmail.com',
                    style: TextStyle(color: Colors.blueGrey[900]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
