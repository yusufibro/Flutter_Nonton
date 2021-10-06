import 'package:flutter/material.dart';
import 'package:flutter_nonton/theme.dart';
import 'package:flutter_nonton/ui/home_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: ListView(
        children: [
          SizedBox(
            height: 110,
          ),
          Image.asset(
            'assets/background.png',
          ),
          SizedBox(
            height: 7,
          ),
          Center(
            child: Text(
              'Payment Success',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Yes! time to relax yourself by\nwatching the good movie',
              style: darkGreyTextStyle.copyWith(
                  fontSize: 16, fontWeight: medium, height: 1.6),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            child: Container(
              height: 50,
              width: 220,
              margin: EdgeInsets.only(
                top: 40,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false);
                },
                child: Text(
                  'Back To Home',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: extraBold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
