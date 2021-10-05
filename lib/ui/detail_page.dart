import 'package:flutter/material.dart';
import 'package:flutter_nonton/ui/success_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buyTicket() {
      return Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessPage(),
              ),
            );
          },
          child: Text('Buy Ticket'),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          buyTicket(),
        ],
      ),
    );
  }
}
