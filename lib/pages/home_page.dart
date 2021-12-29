import 'package:flutter/material.dart';
import 'package:urbanscouting/pages/events_detail_page.dart';
import 'package:urbanscouting/pages/profile_page.dart';
import 'package:urbanscouting/theme.dart';
import 'package:urbanscouting/widgets/all_card.dart';
import 'package:urbanscouting/widgets/articles_card.dart';
import 'package:urbanscouting/widgets/bottom_navbar_item.dart';
import 'package:urbanscouting/widgets/events_card.dart';
import 'package:urbanscouting/widgets/galleries_card.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon_loc.png',
                    width: 11,
                    height: 15,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Bandung Barat, ',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: purpleColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Indonesia',
                          style: subTitleTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: purpleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Let’s share your \nExperience',
                    style: titleTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Image.asset(
                      'assets/profile.png',
                      width: 54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget body() {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: 
                  AllCard(
                    title: 'WSJ 2019',
                    imageUrl: 'assets/img_1.png',
                    location: 'Virginia, United State',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: 
                  AllCard(
                    title: 'JOTA JOTI 2020',
                    imageUrl: 'assets/img_2.png',
                    location: 'Makassar, Indonesia',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: 
                  AllCard(
                    title: 'Jamboree Nasional 2018',
                    imageUrl: 'assets/img_1.png',
                    location: 'Bandung, Indonesia',
                  ),
                ),
              ],
            ),
          ),
          // Other Events
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right:30,),
            child: 
            Row(
              children: [
                Text(
                  'Other Events',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: subTitleTextStyle,
                ),
              ],
            ),
          ),
          Padding(
                padding: const EdgeInsets.only(left: 30, right:30, top: 16,),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EventsDetailPage()),
                        );
                  },
                  child: Column(
                    children: [
                      EventsCard(
                        imageUrl: 'assets/img_11.png',
                        title: 'Jamboree Nasional 2021',
                        location: 'Bangka Belitung, Indonesia',
                      ),
                    ],
                  ),
                ),
              ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right:30, top: 16,),
              child: Column(
                children: [
                  EventsCard(
                    title: 'Pentaloka Saka Kencana',
                    imageUrl: 'assets/img_22.png',
                    location: 'Kiara Payung, Indonesia',
                  ),
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right:30, top: 16,),
              child: Column(
                children: [
                  EventsCard(
                    title: 'Jota Joti 2021',
                    imageUrl: 'assets/img_33.png',
                    location: 'World',
                  ),
                ],
              ),
            ),
          // Other Articles
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right:30,),
            child: 
            Row(
              children: [
                Text(
                  'Other Articles',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: subTitleTextStyle,
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right:30, top: 16,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArticlesCard(
                    title: 'Makna Dasa Darma',
                    imageUrl: 'assets/img_11.png',
                    writer: 'Naufal Abdussyakur, ',
                    id: '#ISJ28888'
                  ),
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right:30, top: 16,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArticlesCard(
                    title: 'Pancasila Dasar Negara',
                    imageUrl: 'assets/img_22.png',
                    writer: 'Admin, ',
                    id: '#ISJ28024'
                  ),
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right:30, top: 16,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArticlesCard(
                    title: 'Bangga Menjadi Pramuka',
                    imageUrl: 'assets/img_33.png',
                    writer: 'Salsa Namira, ',
                    id: '#ISJ07221'
                  ),
                ],
              ),
            ),
          // Galleries
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right:30, bottom: 30,),
            child: 
            Row(
              children: [
                Text(
                  'Galleries',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: subTitleTextStyle,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: 
                  GalleriesCard(
                    title: 'WSJ 2019',
                    imageUrl: 'assets/img_111.png',
                    location: 'Virginia, United State',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: 
                  GalleriesCard(
                    title: 'JOTA JOTI 2020',
                    imageUrl: 'assets/img_222.png',
                    location: 'Makassar, Indonesia',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,),
                  child: 
                  GalleriesCard(
                    title: 'Jamboree Nasional 2018',
                    imageUrl: 'assets/img_333.png',
                    location: 'Bandung, Indonesia',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 90,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          header(),
          body(),
        ],
      ),
      floatingActionButton: 
          Container(
                height: 65,
                width:  MediaQuery.of(context).size.width - (2 * 30),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_home_orange.png',
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_apps.png',
                      isActive: false,
                    ),BottomNavbarItem(
                      imageUrl: 'assets/icon_love.png',
                      isActive: false,
                    ),BottomNavbarItem(
                      imageUrl: 'assets/icon_user.png',
                      isActive: false,
                    ),
                  ],
                ),
              ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
