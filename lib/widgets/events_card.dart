import 'package:flutter/material.dart';
import 'package:urbanscouting/theme.dart';

class EventsCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String location;

  EventsCard({
   required this.title,
   required this.imageUrl,
   required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          )),
        ),
        SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            title,
            style: titleTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_loc.png',
                height: 15,
                width: 11,
              ),
              SizedBox(width: 6,),
              Text(
            location,
            style: subTitleTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
            ],
          ),
        ]),
      ],
    );
  }
}
