import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeulfluent_home_post.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluent_inbox.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluent_productos.dart';
import 'package:misiontic_template/ui/pages/response/screens/makeupfluent_stories.dart';
import '../../widgets/navigation/custom_animated_bottom_bar.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      StoriesPage(),
      InboxPage(),
      ProductPage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
