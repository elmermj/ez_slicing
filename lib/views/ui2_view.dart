import 'package:ez_slicing/main.dart';
import 'package:ez_slicing/views/ui_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UI2View extends GetView<UIViewController> {
  UI2View({super.key});

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
              'UI 2',
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
          child: ListView(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Get.theme.colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Row(
                  children: [
                    Expanded(child: Icon(Icons.person, color: Colors.white, size: 48,)),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello World!', textAlign: TextAlign.left, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                          SizedBox(height: 4,),
                          Text('Lorem Ipsum', textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Lorem', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Ipsum', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Dolor', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Sit', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Amet', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Ane', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Laper', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Mau', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Makan', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Nasi', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Container(
                color: Get.theme.colorScheme.primary,
                height: 90,
                width: Get.width,
                child: const Center(
                  child: Text('Padang', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
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