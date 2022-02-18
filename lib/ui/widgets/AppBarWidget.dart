import 'package:flutter/material.dart';
import 'package:hospital/ui/shared/textstyle.dart';
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Protfilo",
                style:CustomTextStyle.mediumBlackText
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Text(
                    "Add New",
                    style: CustomTextStyle.simpleblace
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          margin: EdgeInsets.only(left: 20, right: 20),
          height: kToolbarHeight - 20,
          child: TextFormField(
            onChanged: (val) {},
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: "Search",
              hintStyle: TextStyle(fontSize: 12),
              suffixIcon: Icon(
                Icons.search,
                size: MediaQuery.of(context).size.height * 0.03,
              ),
            ),
          ),
        )
      ],
    );
  }
}
