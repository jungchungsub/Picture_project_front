import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picture_project/constants.dart';
import 'package:picture_project/view/main/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          MainPage(),
          MyNearPhotoPage(),
          ReservationPage(),
          FavoriteStorePage(),
          MyNearPhotoPage(),
        ],
      ),
      bottomNavigationBar: buildNav(),
    );
  }

  Widget? buildNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: gMainColor,
      unselectedItemColor: Colors.grey,
      onTap: changeIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        navBarItem(const Icon(CupertinoIcons.home)),
        navBarItem(const Icon(CupertinoIcons.home)),
        navBarItem(const Icon(CupertinoIcons.home)),
        navBarItem(const Icon(CupertinoIcons.heart)),
        navBarItem(const Icon(CupertinoIcons.person)),
      ],
    );
  }

  BottomNavigationBarItem navBarItem(Icon icon) {
    return BottomNavigationBarItem(
      icon: icon,
      label: '안녕',
    );
  }

  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
