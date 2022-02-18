import 'package:flutter/material.dart';

class SecondContainerStyle extends StatelessWidget {
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
            color: Colors.black26,
          ),
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 1, color: Colors.black26)),
                child:
                    CircleAvatar(radius: 35, backgroundColor: Colors.black12),
              ),
              Text("Investment",style:TextStyle(fontWeight: FontWeight.bold),)
              ],) ),
        ),
      ],
    );
  }
}
