import 'package:flutter/material.dart';

class NavigationBarItem extends StatefulWidget {
  const NavigationBarItem({super.key});

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  int currentIndex = 0;
  List<String> route = ['/home', '/search', '/cart', '/user'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: '',
            activeIcon: Row(
              children: const [
                Icon(Icons.home_outlined),
                Text('Shop', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search_outlined),
            label: '',
            activeIcon: Row(
              children: const [
                Icon(Icons.search_outlined),
                Text('Search', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag_outlined),
            label: '',
            activeIcon: Row(
              children: const [
                Icon(Icons.shopping_bag_outlined),
                Text('Cart', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            label: '',
            activeIcon: Row(
              children: const [
                Icon(Icons.person_outlined),
                Text('User', style: TextStyle(color: Colors.blue)),
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
    );
  }
}
