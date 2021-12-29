import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanscouting/pages/home_page.dart';
import 'package:urbanscouting/pages/signin_page.dart';
import 'package:urbanscouting/theme.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isEmailValid = true;
  bool isUploaded = false;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget uploadedImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(children: [
            Image.asset(
              'assets/upload_image.png',
              width: 165,
              height: 165,
            ),
          ]),
        ),
      );
    }

    Widget showedImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(children: [
            Image.asset(
              'assets/profile.png',
              width: 165,
              height: 165,
            ),
          ]),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: ListView(
            children: [
              Text(
                'Create Your Account',
                style: titleTextStyle,
              ),
              Text(
                'Sign Up and Get Started',
                style: subTitleTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              isUploaded ? showedImage() : uploadedImage(),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Username',
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
                    'Address',
                    style: subTitleTextStyle,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Address',
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
                      color:
                          isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
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
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SigninPage()),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        text: 'Already have an account? ',
                        style: subTitleTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: 'Log In',
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
