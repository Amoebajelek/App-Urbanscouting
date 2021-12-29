import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanscouting/pages/registration_success_page.dart';
import 'package:urbanscouting/theme.dart';

class RegistrationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Registration',
                style: titleTextStyle,
              ),
              Text(
                'Raimuna Nasional 2021',
                style: subTitleTextStyle,
              ),
              SizedBox(height: 15,),
              Image.asset(
                'assets/img_registration.png',
                height: 317,
                width: 315,
              ),
              SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Scout ID Number',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Scout ID Number',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fullname',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Fullname',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Email Address',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Registration Form',
                    style: subTitleTextStyle,
                  ),
                   SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () => ('https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
                    child: 
                      Text(
                        'Upload...',
                        style: titleTextStyle.copyWith(
                          fontSize: 14,
                        ),// style: descTextStyle,
                      ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
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
                          MaterialPageRoute(builder: (context) => RegistrationSuccessPage()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      )),
                ),
              ),
          ]
        ),
      ),
    );
  }
}