import 'package:flutter/material.dart';

class SkilssImages extends StatelessWidget {
  const SkilssImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/firebase_icon.png', // Change the path according to your image assets
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/bloc_icon.jpg', // Change the path according to your image assets
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/flutter_clean.jpg', // Change the path according to your image assets
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/dart_clean.png', // Change the path according to your image assets
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/sql_icon.jpeg', // Change the path according to your image assets
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/rest_api.jpeg', // Change the path according to your image assets
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
