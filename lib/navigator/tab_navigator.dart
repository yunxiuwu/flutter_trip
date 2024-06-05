import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/my_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  const TabNavigator({super.key});

  @override
  State<TabNavigator> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {

  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;

  final PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView (
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: _activeColor,
        unselectedItemColor: _defaultColor,
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          activeIcon: Icon(Icons.home),
          label: '首页'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search ),
            activeIcon: Icon(Icons.search),
            label: '搜索'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            activeIcon: Icon(Icons.camera_alt),
            label: '旅拍'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,),
            activeIcon: Icon(Icons.account_circle),
            label: '我的'
        )
      ],),
    );
  }
}
