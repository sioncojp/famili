import 'package:app/page/home/main.dart';
import 'package:app/page/album/main.dart';
import 'package:app/page/calendar/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  createState() => _MainScreen();
}

class _MainScreen extends ConsumerState<MainScreen> {
  final List<Widget> _children = [
    const PageHome(),
    const PageAlbum(),
    const PageCalendar(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    const tabItems = [
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.house),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.photoFilm),
        label: 'Album',
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.calendarCheck),
        label: 'Calendar',
      ),
    ];
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: tabItems,
        iconSize: 20,
        selectedIconTheme: const IconThemeData(
            size: 30, color: Colors.black87),
      ),
    );
  }
}