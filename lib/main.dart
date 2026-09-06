import 'package:flutter/material.dart';
import 'package:slideng/features/discover/discover_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int index = 0;

  final pages = [
    DiscoverScreen(),
    Scaffold(body: Center(child: Text('Search Screen'))),
    Scaffold(body: Center(child: Text('Upload Screen'))),
    Scaffold(body: Center(child: Text('Notifications Screen'))),
    Scaffold(body: Center(child: Text('Profile Screen'))),
    // SearchScreen(),
    // UploadScreen(),
    // NotificationsScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],

      bottomNavigationBar: NavigationBar(
        selectedIndex: index,

        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Discover',
          ),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            selectedIcon: Icon(Icons.add_circle),
            label: 'Create',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_none),
            selectedIcon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
