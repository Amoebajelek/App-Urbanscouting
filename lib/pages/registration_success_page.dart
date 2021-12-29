import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanscouting/pages/home_page.dart';
import 'package:urbanscouting/theme.dart';

class RegistrationSuccessPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 60,),
            child: Image.asset(
              'assets/img_registed.png',
              height: 264,
              width: 288,
            ),
          ),
          Center(
            child: Text(
              'Registration Successful',
                  style: titleTextStyle,
                ),
          ),
          SizedBox(height: 12,),
          Center(
            child: Text(
              'Congratulations, your account\nregistration was successful',
                textAlign: TextAlign.center,
                  style: subTitleTextStyle.copyWith(
                    fontSize: 16,
                  )
                ),
          ),
          SizedBox(height: 60,),
          Center(
            child: Container(
                  width: 315,
                  height: 54,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        'Back to Home',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      )),
                ),
              ),
          SizedBox(height: 30,),
        ]
      ),
    );
  }
}