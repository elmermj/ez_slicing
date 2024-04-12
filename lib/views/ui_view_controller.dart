import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UIViewController extends GetxController{
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool rememberMe = false.obs;
}