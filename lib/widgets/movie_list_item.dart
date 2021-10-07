import 'package:flutter/material.dart';
import 'package:flutter_nonton/models/movie_model.dart';
import 'package:flutter_nonton/ui/detail_page.dart';
import 'package:intl/intl.dart';

import '../theme.dart';

class MovieListItem extends StatelessWidget {
  // final String imageUrl;
  // final String title;
  // final DateTime releaseDate;
  // final double rating;

  final MovieModel movie;

  const MovieListItem({
    Key? key,
    // required this.imageUrl,
    // required this.title,
    // required this.releaseDate,
    // required this.rating,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              movie: movie,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 30,
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 157,
              margin: EdgeInsets.only(
                right: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    movie.backdropPath,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: extraBold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    DateFormat('MMM dd, yyyy').format(movie.releaseDate),
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: movie.voteAverage >= 2
                            ? Color(0xffFFAB2E)
                            : lightGreyColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: movie.voteAverage >= 4
                            ? Color(0xffFFAB2E)
                            : lightGreyColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: movie.voteAverage >= 6
                            ? Color(0xffFFAB2E)
                            : lightGreyColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: movie.voteAverage >= 8
                            ? Color(0xffFFAB2E)
                            : lightGreyColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: movie.voteAverage >= 10
                            ? Color(0xffFFAB2E)
                            : lightGreyColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
