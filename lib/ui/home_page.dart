import 'package:flutter/material.dart';
import 'package:flutter_nonton/main.dart';
import 'package:flutter_nonton/theme.dart';
import 'package:flutter_nonton/ui/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          top: 29,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Image.asset(
                'assets/icon_search.png',
              ),
            ),
          ],
        ),
      );
    }

    Widget movie() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 24,
                top: 30,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/image_john.png',
                      width: 300,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Wick 4',
                            style: blackTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: black,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Jun 17, 2021',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/image_2.png',
                      width: 300,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bohemian Rhapsody',
                            style: blackTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: black,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Jun 17, 2021',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget disney() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
        ),
        child: Text(
          'From Disney',
          style: blackTextStyle.copyWith(
            fontSize: 28,
            fontWeight: black,
          ),
        ),
      );
    }

    Widget listMovie() {
      return Column(
        children: [
          // Mulan
          Container(
            margin: EdgeInsets.only(
              left: 24,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/image_3.png',
                    width: 100,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mulan Session',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Jun 17, 2021',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 3 ? Icons.star : Icons.star,
                          color: index < 3 ? Color(0xffFFAB2E) : greyColor,
                        );
                      }),
                    )
                  ],
                ),
              ],
            ),
          ),

          // Beauty and The Beast
          Container(
            margin: EdgeInsets.only(
              left: 24,
              top: 30,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/image_4.png',
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beauty & Beast',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Jun 17, 2021',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 3 ? Icons.star : Icons.star,
                          color: index < 5 ? Color(0xffFFAB2E) : greyColor,
                        );
                      }),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        children: [
          header(),
          movie(),
          SizedBox(
            height: 30,
          ),
          disney(),
          SizedBox(
            height: 20,
          ),
          listMovie(),
        ],
      ),
    );
  }
}
