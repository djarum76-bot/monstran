import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class LaporanLingkunganController extends GetxController {
  late TextEditingController lokasi;
  late TextEditingController alasan;

  final imageFile = File("").obs;
  final ambil = false.obs;
  final ext = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    alasan = TextEditingController();
    lokasi = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    alasan.dispose();
    lokasi.dispose();
  }

  ambilGambar()async{
    XFile? image = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if(image != null){
      ambil.value = true;
      imageFile.value = File(image.path);

      ext.value = image.name.split('.').last;
    }
  }
}
