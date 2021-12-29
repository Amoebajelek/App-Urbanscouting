import 'package:flutter/material.dart';
import 'package:urbanscouting/pages/home_page.dart';
import 'package:urbanscouting/theme.dart';

class ArticlesHomePage extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String duration;
  final String participants;
  final String title_1;
  final String title_2;
  final String title_3;
  final String desc_1;
  final String desc_2;
  final String desc_3;
  final String writer;
  final String id;

  ArticlesHomePage({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.duration,
    required this.participants,
    required this.title_1,
    required this.title_2,
    required this.title_3,
    required this.desc_1,
    required this.desc_2,
    required this.desc_3,
    required this.writer,
    required this.id,
  });

  @override
  State<ArticlesHomePage> createState() => _ArticlesHomePageState();
}

class _ArticlesHomePageState extends State<ArticlesHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Image.asset(widget.imageUrl),
        Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                  },
                  child: Image.asset(
                      'assets/btn_back_2.png',
                      width: 34,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'assets/btn_whitelist.png',
                  width: 34,
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 335,),
          child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width - (2 * 30),
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_loc.png',
                        height: 15,
                        width: 11,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        widget.location,
                        style: subTitleTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
      Padding(
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Container(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                // Info 1
                Row(
                  children: [
                    Container(
                      height: 62,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F5FC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_days.png',
                            width: 38,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.duration,
                                style: titleTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Durations',
                                style: subTitleTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 15,
                    ),

                    // Info 2
                    Container(
                      height: 62,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F5FC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_days.png',
                            width: 38,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.participants,
                                style: titleTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Participants',
                                style: subTitleTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title_1,
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.desc_1,
                        textAlign: TextAlign.justify,
                        style: descTextStyle,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        widget.title_2,
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.desc_2,
                        textAlign: TextAlign.justify,
                        style: descTextStyle,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        widget.title_3,
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.desc_3,
                        textAlign: TextAlign.justify,
                        style: descTextStyle,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          widget.writer,
                          style: titleTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          widget.id,
                          style: descTextStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
