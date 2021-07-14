import 'package:flutter/material.dart';
import 'package:flutter_web/components/header.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          Image.asset(
            'assets/img/bicycle.png',
            width: 500,
          ),
        ],
      );
    }

    Widget scrollDown() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/scroll_down.png',
            width: 24,
          ),
          SizedBox(width: 13),
          Text(
            'Scroll to Learn More',
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/img/background.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Header(),
                container(),
                SizedBox(height: 75),
                scrollDown(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
