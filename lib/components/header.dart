import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Image.asset(
        'assets/img/logo.png',
        width: 72,
        height: 40,
      );
    }

    Widget myAccountButton() {
      return Column(
        children: [
          Container(
            width: 160,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff1D1E3C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: Text(
                'My Account',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget menu(int index, String title) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    selectedIndex == index ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            selectedIndex == index
                ? Container(
                    width: 66,
                    height: 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFE998D),
                    ),
                  )
                : SizedBox(height: 2),
          ],
        ),
      );
    }

    Widget nav() {
      return Row(
        children: [
          menu(0, 'Guides'),
          SizedBox(width: 50),
          menu(1, 'Pricing'),
          SizedBox(width: 50),
          menu(2, 'Team'),
          SizedBox(width: 50),
          menu(3, 'Stories'),
        ],
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 100,
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          logo(),
          nav(),
          myAccountButton(),
        ],
      ),
    );
  }
}
