import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:monstran/app/custom/profil_item.dart';
import 'package:monstran/app/routes/app_pages.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(Get.height * 0.02, Get.height * 0.03, Get.height * 0.02, Get.height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profil",
                  style: TextStyle(
                      fontFamily: "SFProDisplay",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFF000000)
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFD9E7CA)
                  ),
                  width: Get.width,
                  padding: EdgeInsets.symmetric(horizontal: Get.height * 0.03, vertical: Get.height * 0.025),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Monkey D. Luffy",
                                  style: TextStyle(
                                      fontFamily: "SFProDisplay",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xFF000000)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Warga",
                                  style: TextStyle(
                                      fontFamily: "SFProText",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: Color(0xFF000000).withOpacity(0.35)
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  child: Column(
                    children: [
                      ProfilItem(icon: LineIcons.user, nama: "Personal Data", fungsi: (){
                        Get.toNamed(Routes.PERSONAL_DATA);
                      }),
                      ProfilItem(icon: Icons.settings, nama: "Pengaturan", fungsi: (){}),
                    ],
                  ),
                ),
                Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ProfilItem(icon: Icons.logout, nama: "Logout", fungsi: (){
                        Get.offAllNamed(Routes.LOGIN);
                      }),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
