import 'package:flutter/material.dart';
import 'package:urbanscouting/theme.dart';

class ArticlesCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String writer;
  final String id;

  ArticlesCard({
   required this.title,
   required this.imageUrl,
   required this.writer,
   required this.id,
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
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              title,
              style: titleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Text.rich(
              TextSpan(
                text: writer,
                style: subTitleTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: greyColor,
                ),
                children: [
                  TextSpan(
                    text: id,
                    style: subTitleTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
