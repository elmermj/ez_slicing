import 'package:ez_slicing/components/custom_button.dart';
import 'package:ez_slicing/components/score_board.dart';
import 'package:ez_slicing/main.dart';
import 'package:ez_slicing/views/ui_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UI3View extends GetView<UIViewController> {
  UI3View({super.key});

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
              'UI 3',
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
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  border: Border.all(
                    color: const Color.fromARGB(255, 209, 209, 209)
                  )
                ),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Icon(
                    Icons.folder_outlined,
                    color: Get.theme.colorScheme.primary,
                  ),
                )
              ),
              const SizedBox(height: 16),
              const Text(
                "LITERATURE",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ScoreBoard(score: "96", title: "Homework"),
                  ScoreBoard(score: "69", title: "Test"),
                ],
              ),
              const SizedBox(height: 16),
              CustomButton(
                title: "Lorem",
                onPressed: (){},
              )
            ]
          )
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