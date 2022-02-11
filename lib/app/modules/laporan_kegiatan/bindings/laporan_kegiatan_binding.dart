import 'package:get/get.dart';

import '../controllers/laporan_kegiatan_controller.dart';

class LaporanKegiatanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporanKegiatanController>(
      () => LaporanKegiatanController(),
    );
  }
}
