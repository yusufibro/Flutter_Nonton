import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nonton/blocs/home/home_bloc.dart';
import 'package:flutter_nonton/blocs/home_list/home_list_bloc.dart';
import 'package:flutter_nonton/main.dart';
import 'package:flutter_nonton/services/movie_service.dart';
import 'package:flutter_nonton/theme.dart';
import 'package:flutter_nonton/ui/detail_page.dart';
import 'package:flutter_nonton/widgets/movie_carousel.dart';
import 'package:flutter_nonton/widgets/movie_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HomeSuccess) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 29,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: blackTextStyle.copyWith(
                                fontSize: 28,
                                fontWeight: black,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Watch much easier',
                              style: greyTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 45,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                259,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_search.png',
                              width: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // children: [
                        //   MovieCarouselItem(
                        //     imageUrl: 'assets/image_john.png',
                        //     title: 'John Wick 4',
                        //     rating: 10,
                        //     releaseDate: DateTime(2021, 6, 17),
                        //   ),
                        //   MovieCarouselItem(
                        //     imageUrl: 'assets/image_2.png',
                        //     title: 'Bohemian Rhapsody',
                        //     rating: 8,
                        //     releaseDate: DateTime(2020, 5, 17),
                        //   ),
                        // ],
                        children: state.data
                            .map((e) => MovieCarouselItem(movie: e))
                            .toList(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 24,
                        bottom: 20,
                      ),
                      child: Text(
                        'From Disney',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: black,
                        ),
                      ),
                    ),
                    // MovieListItem(
                    //   imageUrl: 'assets/image_3.png',
                    //   title: 'Mulan Seession',
                    //   releaseDate: DateTime(2021, 10, 18),
                    //   rating: 10,
                    // ),
                    // MovieListItem(
                    //   imageUrl: 'assets/image_4.png',
                    //   title: 'Beauty & The Beast',
                    //   releaseDate: DateTime(2021, 10, 18),
                    //   rating: 4,
                    // ),
                    // MovieListItem(
                    //   imageUrl: 'assets/image_5.png',
                    //   title: 'The Dark II',
                    //   releaseDate: DateTime(2021, 4, 24),
                    //   rating: 8,
                    // ),
                    BlocBuilder<HomeListBloc, HomeListState>(
                      builder: (context, state) {
                        if (state is HomeListLoading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (state is HomeListSuccess) {
                          return SingleChildScrollView(
                            child: Column(
                              children: state.listMovie
                                  .map((e) => MovieListItem(movieList: e))
                                  .toList(),
                            ),
                          );
                        }
                        return Center(
                          child: Text('Data Tidak Ada'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          }
          return Center(
            child: Text('Data Tidak Bisa Dimuat'),
          );
        },
      ),
    );
  }
}
