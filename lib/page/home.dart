import 'package:untitled7/tabs/tab/homeTab.dart';
import 'package:untitled7/tabs/tab/scheduleTab.dart';
import 'package:untitled7/tabs/tab/mypageTab.dart';
import 'package:untitled7/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final int selectedIndex;
  final String id;
  final String lat;
  final String long;

  const Home({Key? key, required this.selectedIndex, required this.id, required this.lat, required this.long,}) : super(key: key);
  @override
  _HomeState createState() => _HomeState(selectedIndex);
}

List<Map> navigationBarItems = [
  {'icon': Icons.home, 'index': 0},
  {'icon': Icons.map, 'index': 1},
  {'icon': Icons.login, 'index': 2},
];

class _HomeState extends State<Home> {
  int selectedIndex=0;
  _HomeState(this.selectedIndex);


  void goToSchedule() {
    setState(() {
      selectedIndex = 1;
    });
  }

  void goToMypage() {
    setState(() {
      selectedIndex = 2;
    });
  }
  @override
  Widget build(BuildContext context) {


    List<Widget> screens = [
      HomeTab(
        onPressedScheduleCard: goToSchedule,
      ),
      ScheduleTab(onPressedScheduleCard: goToSchedule,
          lat: widget.lat,
          long: widget.long,
          id: widget.id
      ),
      MypageTab(),
    ];

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child : screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        selectedItemColor: Color(MyColors.primary),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          for (var navigationBarItem in navigationBarItems)
            BottomNavigationBarItem(
              icon: Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border(
                    top: selectedIndex == navigationBarItem['index']
                        ? BorderSide(color: Color(MyColors.bg01), width: 5)
                        : BorderSide.none,
                  ),
                ),
                child: Icon(
                  navigationBarItem['icon'],
                  color: Color(MyColors.bg01),
                ),
              ),
              label: '',
            ),
        ],
        currentIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
      ),
    );
  }
}