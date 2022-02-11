import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:monstran/app/modules/home/views/home_view.dart';
import 'package:monstran/app/modules/laporan/views/laporan_view.dart';
import 'package:monstran/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:monstran/app/modules/petugas/views/petugas_view.dart';
import 'package:monstran/app/modules/profil/views/profil_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Obx((){
            return IndexedStack(
              index: controller.tabIndex.value,
              children: [
                HomeView(),
                // warga -> Laporan
                // LaporanView(),
                //petugas -> Notifikasi
                // NotifikasiView(),
                //pemerintah -> Petugas
                PetugasView(),
                ProfilView()
              ],
            );
          })
      ),
      bottomNavigationBar: Obx((){
        return BottomNavigationBar(
            elevation: 0,
            onTap: controller.pindahTab,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Color(0xFFE7EDDD),
            selectedItemColor: Color(0xFF696969),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(LineIcons.home),
                label: 'Beranda',
              ),

              //warga
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.menu_book),
              //   label: 'Laporan',
              // ),

              //petugas
              // BottomNavigationBarItem(
              //   icon: Icon(LineIcons.bell),
              //   label: 'Notifikasi',
              // ),

              //pemerintah
              BottomNavigationBarItem(
                icon: Icon(LineIcons.users),
                label: 'Petugas',
              ),

              BottomNavigationBarItem(
                icon: Icon(LineIcons.user),
                label: 'Profil',
              ),
            ]
        );
      }),
    );
  }
}
