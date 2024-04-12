import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: Get.theme.colorScheme.secondary,
          width: 1,
        )
      ),
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello World!', textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Get.theme.colorScheme.onBackground),),
                  const SizedBox(height: 8,),
                  Text('Lorem Ipsum', textAlign: TextAlign.left, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Get.theme.colorScheme.onBackground),),
                ],
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Get.theme.colorScheme.primary
                ),
                height: 36,
                width: 36,
                child: Icon(Icons.search, color: Get.theme.colorScheme.onPrimary,)
              ),
            )
          ),
        ],
      ),
    );
  }
}