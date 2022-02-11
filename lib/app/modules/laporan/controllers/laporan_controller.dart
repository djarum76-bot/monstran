import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaporanController extends GetxController {
  late TextEditingController search;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    search = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    search.dispose();
  }
}
