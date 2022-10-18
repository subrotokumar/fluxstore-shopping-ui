import 'package:flutter/material.dart';
import 'pages.dart';

import '../widgets/widgets.dart';
import '../widgets/gobal/appbar.dart';

class HomeScreen extends StatefulWidget {
  static String route = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
          child: Column(
            children: [
              const Appbar(),
              const SizedBox(height: 30),
              Expanded(
                child: <Widget>[Shop(), Search(), Cart(), User()][currentIndex],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 35, right: 30),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: '',
              activeIcon: Row(
                children: const [
                  Icon(Icons.home_outlined),
                  Text(
                    'Shop',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search_outlined),
              label: '',
              activeIcon: Row(
                children: const [
                  Icon(Icons.search_outlined),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_bag_outlined),
              label: '',
              activeIcon: Row(
                children: const [
                  Icon(Icons.shopping_bag_outlined),
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              label: '',
              activeIcon: Row(
                children: const [
                  Icon(Icons.person_outlined),
                  Text(
                    'User',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
