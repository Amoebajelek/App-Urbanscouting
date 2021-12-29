import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:urbanscouting/pages/home_page.dart';
import 'package:urbanscouting/pages/signup_page.dart';
import 'package:urbanscouting/theme.dart';

class SigninPage extends StatefulWidget {
  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '' );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back,',
                style: titleTextStyle,
              ),
              Text(
                'Log In to Continue',
                style: subTitleTextStyle,
              ),
              SizedBox(
                height: 76,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/img_signin.png',
                      width: 315,
                      height: 187,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 76,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      print(value);
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                    },
                    decoration: InputDecoration(
                      hintText: 'Your Username',
                        // fillColor: greyColor,
                        // filled: true,
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(1000),
                        //   borderSide: BorderSide.none,
                        // focusedBorder: (),
                        ),
                        style: TextStyle(
                          color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
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
                    'Password',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                        // fillColor: greyColor,
                        // filled: true,
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(1000),
                        //   borderSide: BorderSide(color: Color(0xff2A2B3D)),
                        // focusedBorder: (),
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
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
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 129,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30,),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                    },
                    child: Text.rich(
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: subTitleTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: orangeColor,
                          ),
                        ),
                      ],
                    ),
                                ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
