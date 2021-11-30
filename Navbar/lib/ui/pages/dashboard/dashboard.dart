import 'package:bottom_navigation_flutter/ui/pages/products/products_page.dart';
import 'package:bottom_navigation_flutter/ui/pages/home/home_page.dart';
import 'package:bottom_navigation_flutter/ui/pages/messages/messages_page.dart';
import 'package:bottom_navigation_flutter/ui/pages/stories/stories_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/navigation/custom_animated_bottom_bar.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Custom Animated Bottom Navigation Bar"),
          backgroundColor: Colors.green[200],
        ),
        body: getBody(),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      iconSize: 30,
      backgroundColor: Color(0xFF9E2A63),
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 10,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio'),
          activeColor: Colors.white,
          inactiveColor: Colors.white.withOpacity(0.4),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.history_rounded),
          title: Text('Historias'),
          activeColor: Colors.white,
          inactiveColor: Colors.white.withOpacity(0.4),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Chat ',
          ),
          activeColor: Colors.white,
          inactiveColor: Colors.white.withOpacity(0.4),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Productos'),
          activeColor: Colors.white,
          inactiveColor: Colors.white.withOpacity(0.4),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      UsersPage(),
      MessagesPage(),
      AddPage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
