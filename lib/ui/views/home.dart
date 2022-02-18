import 'package:flutter/material.dart';
import 'package:hospital/ui/views/fifthpage.dart';
import 'package:hospital/ui/views/firstpage.dart';
import 'package:hospital/ui/views/fourthpage.dart';
import 'package:hospital/ui/views/secondpage.dart';
import 'package:hospital/ui/views/thirdpage.dart';

class HospitalHome extends StatefulWidget {
  @override
  _HospitalHomeState createState() => _HospitalHomeState();
}

class _HospitalHomeState extends State<HospitalHome> {
  void additem(index) {
    setState(() {
      _selectedPage = index;
      _pagecontroller.animateToPage(_selectedPage,
          duration: Duration(milliseconds: 1), curve: Curves.linear);
    });
  }

  int _selectedPage = 0;
  List<Widget> pageList = [];
  var _pagecontroller = PageController();
  @override
  void initState() {
    pageList.add(Secondpage());
    pageList.add(Thirdpage());
    pageList.add(FourthPage());
    pageList.add(FifthPage());
    pageList.add(SixPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pageList,
        onPageChanged: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        controller: _pagecontroller,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedFontSize: 12,
        backgroundColor: Colors.black26,
        type: BottomNavigationBarType.fixed,
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            label: "Dashboard",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
              color: Colors.white,
            ),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.badge,
              color: Colors.white,
            ),
            label: "Portfolio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
              color: Colors.white,
            ),
            label: "Calculator",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: "Account",
          ),
        ],
        currentIndex: _selectedPage,
        onTap: additem,
      ),
    );
  }
}
