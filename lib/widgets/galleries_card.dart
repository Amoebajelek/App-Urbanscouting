import 'package:flutter/material.dart';
import 'package:urbanscouting/theme.dart';

class GalleriesCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String location;

  GalleriesCard({
    required this.title,
    required this.imageUrl,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 260,
            height: 156,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 11,
            ),
            child: Text(
              title,
              style: titleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 5,
            ),
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 11,
                  height: 15,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  location,
                  style: subTitleTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
