import 'package:flutter/material.dart';
import 'package:project_management_/Pages/SignUp.dart';
import 'package:project_management_/Pages/error.dart';
import 'package:project_management_/Pages/home.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
 int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:  SizedBox(
          height: 75,
          child: NavigationBar(
             onDestinationSelected: (int index) {
             setState(() {
             _currentPageIndex = index;
             }
             );
             },
             indicatorColor: Color(0xffDAFFFB),
             selectedIndex: _currentPageIndex,
             backgroundColor:Color(0xff176B87),
             elevation: 10,
             destinations: const <Widget>[
               NavigationDestination(
                 selectedIcon: Icon(Icons.home),
                 icon: Icon(Icons.home_outlined),
                 label: 'Home',

              ),

               NavigationDestination(
                  selectedIcon: Icon(Icons.calendar_today_outlined),
                  icon: Icon(Icons.calendar_today_outlined),
                  label: 'Worklist',
              ),

              NavigationDestination(
                 selectedIcon: Icon(Icons.notifications),
                 icon: Icon(Icons.notifications_none),
                 label: 'Notifications',
             ),

              NavigationDestination(
                 selectedIcon: Icon(Icons.settings),
                 icon: Icon(Icons.settings),
                 label: 'Settings',
             ),
           ],
          ),
        ),
      body: <Widget>[
        //menu1(),
        home(),
        SignUp(),
        SignUp(),
        SignUp(),

      ][_currentPageIndex]

    );
  }
}
