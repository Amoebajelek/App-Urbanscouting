import 'package:flutter/material.dart';
import 'package:urbanscouting/theme.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Text(
                  'Account Information',
                  style: titleTextStyle.copyWith(
                    color: orangeColor,
                  ),
                ),
                Text(
                  'Official Member',
                  style: subTitleTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30,),
                  child: Center(
                    child: Image.asset(
                      'assets/profile.png',
                      width: 165,
                      height: 165,
                    ),
                  ),
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
          ]
        ),
      ),
    );
  }
}