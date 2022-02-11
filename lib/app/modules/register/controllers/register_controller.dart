import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController email;
  late TextEditingController nama;
  late TextEditingController password;
  late TextEditingController conf_password;

  final obscure = true.obs;
  final conf_obscure = true.obs;

  final role = "Pilih Role Anda".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = TextEditingController();
    nama = TextEditingController();
    password = TextEditingController();
    conf_password = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    nama.dispose();
    password.dispose();
    conf_password.dispose();
  }
}
