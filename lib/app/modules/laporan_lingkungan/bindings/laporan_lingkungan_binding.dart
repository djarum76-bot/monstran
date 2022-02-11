import 'package:get/get.dart';

import '../controllers/laporan_lingkungan_controller.dart';

class LaporanLingkunganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporanLingkunganController>(
      () => LaporanLingkunganController(),
    );
  }
}
