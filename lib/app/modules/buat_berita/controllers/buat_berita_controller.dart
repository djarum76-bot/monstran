import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class BuatBeritaController extends GetxController {
  late TextEditingController judul;
  late TextEditingController ket;

  final imageFile = File("").obs;
  final ambil = false.obs;
  final ext = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    judul = TextEditingController();
    ket = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    judul.dispose();
    ket.dispose();
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
