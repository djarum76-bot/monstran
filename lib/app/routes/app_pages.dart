import 'package:get/get.dart';

import '../modules/buat_berita/bindings/buat_berita_binding.dart';
import '../modules/buat_berita/views/buat_berita_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/detail_berita/bindings/detail_berita_binding.dart';
import '../modules/detail_berita/views/detail_berita_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/laporan/bindings/laporan_binding.dart';
import '../modules/laporan/views/laporan_view.dart';
import '../modules/laporan_kegiatan/bindings/laporan_kegiatan_binding.dart';
import '../modules/laporan_kegiatan/views/laporan_kegiatan_view.dart';
import '../modules/laporan_lingkungan/bindings/laporan_lingkungan_binding.dart';
import '../modules/laporan_lingkungan/views/laporan_lingkungan_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notifikasi/bindings/notifikasi_binding.dart';
import '../modules/notifikasi/views/notifikasi_view.dart';
import '../modules/personal_data/bindings/personal_data_binding.dart';
import '../modules/personal_data/views/personal_data_view.dart';
import '../modules/petugas/bindings/petugas_binding.dart';
import '../modules/petugas/views/petugas_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.LAPORAN,
      page: () => LaporanView(),
      binding: LaporanBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
    GetPage(
      name: _Paths.PETUGAS,
      page: () => PetugasView(),
      binding: PetugasBinding(),
    ),
    GetPage(
      name: _Paths.PERSONAL_DATA,
      page: () => PersonalDataView(),
      binding: PersonalDataBinding(),
    ),
    GetPage(
      name: _Paths.LAPORAN_KEGIATAN,
      page: () => LaporanKegiatanView(),
      binding: LaporanKegiatanBinding(),
    ),
    GetPage(
      name: _Paths.LAPORAN_LINGKUNGAN,
      page: () => LaporanLingkunganView(),
      binding: LaporanLingkunganBinding(),
    ),
    GetPage(
      name: _Paths.BUAT_BERITA,
      page: () => BuatBeritaView(),
      binding: BuatBeritaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BERITA,
      page: () => DetailBeritaView(),
      binding: DetailBeritaBinding(),
    ),
  ];
}
