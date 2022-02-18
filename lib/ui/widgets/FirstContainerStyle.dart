import 'package:flutter/material.dart';

class FirstContainerStyle extends StatelessWidget {
  final String text;
  FirstContainerStyle({this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 15,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black12,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              color: Colors.black26,
              height: 70,
            ),
          ),
        ),
        Text(text,style:TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}
