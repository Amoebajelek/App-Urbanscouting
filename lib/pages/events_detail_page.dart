import 'package:flutter/material.dart';
import 'package:urbanscouting/pages/events_home_page.dart';

class EventsDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              EventsHomePage(
                imageUrl: 'assets/img_event_1.png', 
                title: 'RAIMUNA NASIONAL 2021' , 
                location: 'Bangka Belitung', 
                duration: '5 Days', 
                participants: '4.6 K', 
                title_1: 'Description', 
                desc_1: 'The World Scout Jamboree is above all an educational event that brings together the world’s young people to promote peace and mutual understanding and to develop leadership and life skills.',
                date: '21-26 October 2021',
                desc_2: 'Situated in the wilds of West Virginia, The Summit Bechtel Reserve is a training, Scouting, and adventure center for the millions of youth and adults involved in the Boy Scouts of America (BSA) and anyone who loves the outdoors. The Summit Bechtel Reserve is also home to the BSA’s National Scout Jamborees, and its Paul R. Christen National High Adventure Base complements the BSA’s other high adventure bases: Philmont Scout Ranch, Northern Tier and Florida Sea Base.',
                organizer: 'Kwartir Nasional Gerakan Pramuka'
                ),
            ]
          ),
        ),
      ),
    );
  }
}