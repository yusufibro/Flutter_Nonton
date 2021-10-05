import 'package:flutter/material.dart';
import 'package:flutter_nonton/theme.dart';
import 'package:intl/intl.dart';

class MovieCarouselItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final DateTime releaseDate;
  final double rating;

  const MovieCarouselItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.releaseDate,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24,
      ),
      width: 300,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: extraBold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    DateFormat('MMM dd, yyyy').format(releaseDate),
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: rating >= 2 ? Color(0xffFFAB2E) : lightGreyColor,
                size: 18,
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.star,
                color: rating >= 4 ? Color(0xffFFAB2E) : lightGreyColor,
                size: 18,
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.star,
                color: rating >= 6 ? Color(0xffFFAB2E) : lightGreyColor,
                size: 18,
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.star,
                color: rating >= 8 ? Color(0xffFFAB2E) : lightGreyColor,
                size: 18,
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.star,
                color: rating >= 10 ? Color(0xffFFAB2E) : lightGreyColor,
                size: 18,
              ),
              SizedBox(
                width: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}