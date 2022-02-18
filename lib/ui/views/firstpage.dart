import 'package:flutter/material.dart';
import 'package:hospital/core/viewmodels/uiData.dart';
import 'package:hospital/ui/shared/textstyle.dart';
import 'package:hospital/ui/widgets/AppBarWidget.dart';
import 'package:hospital/ui/widgets/FirstContainerStyle.dart';
import 'package:hospital/ui/widgets/secondContainerStyle.dart';

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: AppBarWidget()),
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: GridView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            mainAxisExtent: 170,
                            crossAxisCount:
                                MediaQuery.of(context).orientation ==
                                        Orientation.landscape
                                    ? 3
                                    : 2,
                          ),
                          itemCount: UIdata().items.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return FirstContainerStyle(
                              text: UIdata().items[index],
                            );
                          }),
                    ),
                    rowdata(),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: GridView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            mainAxisExtent: 185,
                            crossAxisCount:
                                MediaQuery.of(context).orientation ==
                                        Orientation.landscape
                                    ? 3
                                    : 2,
                          ),
                          itemCount: UIdata().items.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return SecondContainerStyle();
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget rowdata() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("My Funds", style: CustomTextStyle.myfind),
        Text("See All", style: CustomTextStyle.seeall),
      ],
    ),
  );
}
