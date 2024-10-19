import 'package:flutter/material.dart';
import 'package:ui_test/data/data.dart';
import 'package:ui_test/home.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  void _selectTab(int index) {
    setState(() {
      _currentIndex = index;
      imageAvatars.shuffle();
      imageBackgrounds.shuffle();
    });
  }

  var _currentIndex = 0;

  final pages = [
    const HomeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
    Container(color: Colors.grey),
    Container(color: Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: isDarkMode ? const Color(0xFF1D1F24) : null,
        selectedItemColor: const Color(0xFF827BEB),
        unselectedItemColor: const Color(0xFF676D75),
        currentIndex: _currentIndex,
        onTap: _selectTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/icons/chat.png')),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon:
                ImageIcon(AssetImage('assets/images/icons/blog-pencil 1.png')),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
