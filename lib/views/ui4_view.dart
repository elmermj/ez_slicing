import 'package:ez_slicing/color_scheme.dart';
import 'package:ez_slicing/components/custom_button.dart';
import 'package:ez_slicing/components/custom_text_field.dart';
import 'package:ez_slicing/views/ui_view_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UI4View extends GetView<UIViewController> {
  UI4View({super.key});

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
              'UI 4',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Get.theme.colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                CustomTextField(
                  labelText: "Name",
                  controller: controller.nameController
                ),
                const SizedBox(height: 20),
        
                CustomTextField(
                  labelText: "Email",
                  controller: controller.emailController
                ),
                const SizedBox(height: 20), 
                CustomTextField(
                  labelText: "Password",
                  controller: controller.passwordController,
                  isPassword: true,
                ),
                const SizedBox(height: 60), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                      value: controller.rememberMe.value,
                      onChanged: (value) {
                        controller.rememberMe.value = value ?? false;
                      },
                      side: const BorderSide(
                        color: Color.fromARGB(255, 209, 209, 209), // Checkbox border color
                      ),
                      checkColor: colorScheme.primary,
                    ),
                    const Text('Remember', style: TextStyle(fontSize: 16, color: Colors.black),),
                    const Spacer(),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        text: 'Learn more?',
                        style: TextStyle(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.bold
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                    ),
                  ],
                ),              
                const SizedBox(height: 20),
                CustomButton(
                  title: 'Submit',
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        width: Get.width,
        child: Column(
          children: [
            const Text(
              "Lorem ipsum dolor sit amet",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 199, 199, 199)
              )
            ),
            RichText(
              text: TextSpan(
                text: 'New Password',
                style: TextStyle(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.bold
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}


