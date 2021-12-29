import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanscouting/pages/started_page.dart';
import 'package:urbanscouting/theme.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => StartedPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo-2.png',
              width: 76,
              height: 59,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'URBANSCOUTING',
              style: GoogleFonts.viga(
                fontSize: 24,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
