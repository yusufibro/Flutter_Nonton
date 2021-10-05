import 'package:flutter/material.dart';
import 'package:flutter_nonton/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Column(
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
            Text(
              'Payment Success',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Yes! time to relax yourself by\nwatching the good movie',
              style: darkGreyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 220,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Back To Home',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
