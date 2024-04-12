import 'package:ez_slicing/color_scheme.dart';
import 'package:ez_slicing/views/ui1_view.dart';
import 'package:ez_slicing/views/ui2_view.dart';
import 'package:ez_slicing/views/ui3_view.dart';
import 'package:ez_slicing/views/ui4_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

RxInt navbarIndex = 0.obs;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: colorScheme
      ),
      darkTheme: ThemeData(
        colorScheme: colorScheme
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ez Slicing'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(8),
          child: Center(
            child: GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    color: Colors.red,
                    child: const Center(child: Text('UI 1',)),
                  ),
                  onTap: () => Get.to(()=>UI1View()),
                ),
                GestureDetector(
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text('UI 2',)),
                  ),
                  onTap: () => Get.to(()=>UI2View()),
                ),
                GestureDetector(
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: Text('UI 3')),
                  ),
                  onTap: () => Get.to(()=>UI3View()),
                ),
                GestureDetector(
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(child: Text('UI 4')),
                  ),
                  onTap: () => Get.to(()=>UI4View()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
