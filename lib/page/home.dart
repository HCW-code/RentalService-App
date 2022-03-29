import 'package:untitled7/tabs/tab/homeTab.dart';
import 'package:untitled7/tabs/tab/scheduleTab.dart';
import 'package:untitled7/tabs/tab/mypageTab.dart';
import 'package:untitled7/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {


  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => new _HomeState();
}

List<Map> navigationBarItems = [
  {'icon': Icons.home, 'index': 0},
  {'icon': Icons.map, 'index': 1},
  {'icon': Icons.login, 'index': 2},
];

class _HomeState extends State<Home> {
  final _navigatorKeyList = List.generate(3, (index) => GlobalKey<NavigatorState>());
  int _currentIndex = 0;

  final _pages = [HomeTab(),
    ScheduleTab(
        lat: "0",
        long: "0",
        id: "0"),
    MypageTab(),
  ];






  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            elevation: 0,
            toolbarHeight: 40,
          ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: _pages.map( (page) {
            return CustomNavigator( page: page);
          },
          ).toList(),
        ),
        bottomNavigationBar: TabBar(
          indicatorPadding: EdgeInsets.only(left: 30.0, right: 30.0),
          indicatorColor: Colors.grey,
          //tab 하단 indicator weight
          indicatorWeight: 5,
          //label color
          isScrollable: false,
          labelColor: Colors.grey,
          onTap: (index) => setState(() { _currentIndex = index; }),
          tabs: const [
            Tab( icon: Icon( Icons.home, color: Colors.grey,), text: '홈', ),
            Tab( icon: Icon( Icons.map, color: Colors.grey,), text: '지도', ),
            Tab( icon: Icon( Icons.login, color: Colors.grey,), text: '마이페이지', ),
          ],
        ),
      ),
    );
  }
}

class CustomNavigator extends StatefulWidget {
  final Widget page;
  const CustomNavigator({Key? key, required this.page}) : super(key: key);
  @override _CustomNavigatorState createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator>{
  @override Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (_) => MaterialPageRoute(builder: (context) => widget.page),
    );
  }
}