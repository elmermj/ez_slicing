import 'package:ez_slicing/components/grid_item.dart';
import 'package:ez_slicing/main.dart';
import 'package:ez_slicing/views/ui_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UI1View extends GetView<UIViewController> {
  UI1View({super.key});

  @override
  final UIViewController controller = Get.put(UIViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'UI 1',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Get.theme.colorScheme.background,
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 2,
            childAspectRatio: 16/9,
            children: const <Widget>[
              GridItem(),
              GridItem(),
              GridItem(),
              GridItem(),
              GridItem(),
              GridItem(),
              GridItem(),
              GridItem(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
            currentIndex: navbarIndex.value,
            onTap: (index) {
              navbarIndex.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedItemColor: Colors.grey[900], // Darker blue when active
            unselectedItemColor: Colors.grey, // Grey when inactive
          ),
      ),
    );
  }
}