import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaporanKegiatanController extends GetxController {
  late TextEditingController nama;
  late TextEditingController banyak;
  late TextEditingController ket;

  final tanggal = "".obs;

  final selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nama = TextEditingController();
    banyak = TextEditingController();
    ket = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nama.dispose();
    banyak.dispose();
    ket.dispose();
  }
}
