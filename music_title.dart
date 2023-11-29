// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Musiclistening extends StatefulWidget {
  const Musiclistening({Key? key}) : super(key: key);

  @override
  _MusiclisteningState createState() => _MusiclisteningState();
}

class _MusiclisteningState extends State<Musiclistening> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            Icons.favorite,
            color: Colors.orange,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Listening for you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // Subtitle
              // ignore: prefer_const_constructors
              Text(
                '16 music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
