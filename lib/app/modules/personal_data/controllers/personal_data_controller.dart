import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataController extends GetxController {
  late TextEditingController nama;
  late TextEditingController nohp;
  late TextEditingController alamat;

  final jenis_kelamin = "Jenis Kelamin".obs;
  final tanggal = "".obs;

  final selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nama = TextEditingController();
    nohp = TextEditingController();
    alamat = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nama.dispose();
    nohp.dispose();
    alamat.dispose();
  }
}
