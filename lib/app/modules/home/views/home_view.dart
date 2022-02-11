import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:monstran/app/custom/home_item.dart';
import 'package:monstran/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: Get.height * 0.03, horizontal: Get.height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, User",
                  style: TextStyle(
                      fontFamily: "SFProDisplay",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF404040)
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontFamily: "SFProDisplay",
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Color(0xFF404040)
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      LineIcons.mapMarker
                    ),
                    Text(
                      "Pasuruan, Jawa Timur",
                      style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontSize: 14,
                          color: Color(0xFF404040)
                      ),
                    )
                  ],
                ),
                Container(
                  height: Get.height * 0.34068627451,
                  width: Get.width,
                  margin: EdgeInsets.symmetric(vertical: Get.height * 0.03),
                  padding: EdgeInsets.all(Get.height * 0.02),
                  decoration: BoxDecoration(
                    color: Color(0xFFD9E7CA),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: Get.height * 0.34068627451 * 0.5,
                        child: Image.asset("asset/home.png"),
                        margin: EdgeInsets.only(bottom: Get.height * 0.02),
                      ),
                      Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HomeItem(nama: "Monitor", icon: LineIcons.desktop, fungsi: (){}),
                                HomeItem(nama: "Map", icon: LineIcons.map, fungsi: (){}),
                                HomeItem(nama: "Berita", icon: LineIcons.pen, fungsi: (){
                                  Get.toNamed(Routes.BUAT_BERITA);
                                }),
                                // HomeItem(nama: "Laporkan", icon: LineIcons.camera, fungsi: (){
                                //   Get.bottomSheet(
                                //       Container(
                                //         height: Get.height * 0.16,
                                //         decoration: BoxDecoration(
                                //             color: Color(0xFF2B2B2B),
                                //             borderRadius: BorderRadius.only(
                                //               topLeft: Radius.circular(20),
                                //               topRight: Radius.circular(20)
                                //             )
                                //         ),
                                //         child: Column(
                                //           crossAxisAlignment: CrossAxisAlignment.start,
                                //           children: [
                                //             Container(
                                //               padding: EdgeInsets.all(Get.height * 0.01),
                                //               child: Column(
                                //                 children: [
                                //                   SizedBox(height: 20,),
                                //                   Row(
                                //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //                     children: [
                                //                       GestureDetector(
                                //                         onTap: (){
                                //                           Get.toNamed(Routes.LAPORAN_KEGIATAN);
                                //                         },
                                //                         child: Column(
                                //                           children: [
                                //                             CircleAvatar(
                                //                               radius: 32,
                                //                               backgroundColor: Colors.white,
                                //                               child: CircleAvatar(
                                //                                 radius: 30,
                                //                                 child: Icon(LineIcons.usersCog, size: 30, color: Colors.white,),
                                //                                 backgroundColor: Color(0xFF2B2B2B),
                                //                               ),
                                //                             ),
                                //                             SizedBox(height: 8,),
                                //                             Text(
                                //                               "Kegiatan",
                                //                               style: TextStyle(
                                //                                   fontFamily: "SFProDisplay",
                                //                                   fontSize: 14,
                                //                                   fontWeight: FontWeight.w500,
                                //                                   color: Color(0xFFFFFFFF)
                                //                               ),
                                //                             )
                                //                           ],
                                //                         ),
                                //                       ),
                                //                       GestureDetector(
                                //                         onTap: (){
                                //                           Get.toNamed(Routes.LAPORAN_LINGKUNGAN);
                                //                         },
                                //                         child: Column(
                                //                           children: [
                                //                             CircleAvatar(
                                //                               radius: 32,
                                //                               backgroundColor: Colors.white,
                                //                               child: CircleAvatar(
                                //                                 radius: 30,
                                //                                 child: Icon(LineIcons.map, size: 30, color: Colors.white,),
                                //                                 backgroundColor: Color(0xFF2B2B2B),
                                //                               ),
                                //                             ),
                                //                             SizedBox(height: 8,),
                                //                             Text(
                                //                               "Lingkungan",
                                //                               style: TextStyle(
                                //                                   fontFamily: "SFProDisplay",
                                //                                   fontSize: 14,
                                //                                   fontWeight: FontWeight.w500,
                                //                                   color: Color(0xFFFFFFFF)
                                //                               ),
                                //                             )
                                //                           ],
                                //                         ),
                                //                       ),
                                //                     ],
                                //                   )
                                //                 ],
                                //               ),
                                //             ),
                                //           ],
                                //         ),
                                //       ),
                                //       enableDrag: true
                                //   );
                                // }),
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Berita",
                                style: TextStyle(
                                    fontFamily: "SFProDisplay",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Color(0xFF404040)
                                ),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Text(
                                  "Lihat Selengkapnya",
                                  style: TextStyle(
                                      fontFamily: "SFProDisplay",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFF404040)
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (context, index){
                                    return index != 3
                                        ? GestureDetector(
                                            onTap: (){
                                              Get.toNamed(Routes.DETAIL_BERITA);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("asset/berita.png")
                                                  ),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              margin: EdgeInsets.only(right: Get.height * 0.02),
                                              width: Get.height * 0.35,
                                              height: Get.height,
                                              padding: EdgeInsets.symmetric(horizontal: Get.height * 0.02, vertical: Get.height * 0.04),
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  "Penyebaran Sampah di Jawa Timur kian meluas",
                                                  style: TextStyle(
                                                      fontFamily: "SFProDisplay",
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Color(0xFFFFFFFF)
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        : GestureDetector(
                                            onTap: (){
                                              Get.toNamed(Routes.DETAIL_BERITA);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("asset/berita.png")
                                                  ),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              width: Get.height * 0.35,
                                              height: Get.height,
                                              padding: EdgeInsets.symmetric(horizontal: Get.height * 0.02, vertical: Get.height * 0.04),
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  "Penyebaran Sampah di Jawa Timur kian meluas",
                                                  style: TextStyle(
                                                      fontFamily: "SFProDisplay",
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Color(0xFFFFFFFF)
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                  }
                              )
                          )
                        ],
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}
