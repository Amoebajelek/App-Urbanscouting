import 'package:flutter/material.dart';
import 'package:urbanscouting/pages/articles_home_page.dart';

class ArticlesDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ArticlesHomePage(
                imageUrl: 'assets/img_articles_1.png', 
                title: 'WSJ 2019' ,
                location: 'Japan', 
                duration: '7 Days', 
                participants: '3.7 K', 
                title_1: 'Description', 
                title_2: 'Who Attends the World Scout Jamboree?', 
                title_3: 'The Jamboree Hosts', 
                desc_1: 'The World Scout Jamboree is above all an educational event that brings together the world’s young people to promote peace and mutual understanding and to develop leadership and life skills.', 
                desc_2: 'The 24th World Scout Jamboree is an official educational event of the World Organization of the Scout Movement (WOSM). It is specifically designed for young people ages 14 to 17 years old from National Scout Organizations (NSOs), which are members of WOSM. NSOs send approved contingents of youth participants; adult unit leaders; and adult International Service Team members, who are the staff for the jamboree.',
                desc_3: 'This 24th World Scout Jamboree is unique because it is a team effort by Scouts Canada, Asociación de Scouts de México, and the Boy Scouts of America. Our three countries are getting ready to welcome our Scouting friends as family to “Unlock a New World.”',
                writer: 'Naufal Abdussyakur',
                id: '#ISJ2888',
                ),
            ]
          ),
        ),
      ),
    );
  }
}