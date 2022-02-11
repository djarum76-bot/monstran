import 'package:get/get.dart';
import 'package:monstran/app/modules/laporan/controllers/laporan_controller.dart';
import 'package:monstran/app/modules/notifikasi/controllers/notifikasi_controller.dart';
import 'package:monstran/app/modules/petugas/controllers/petugas_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<LaporanController>(
          () => LaporanController(),
    );
    Get.lazyPut<NotifikasiController>(
          () => NotifikasiController(),
    );
    Get.lazyPut<PetugasController>(
          () => PetugasController(),
    );
  }
}
