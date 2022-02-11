import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/laporan_lingkungan_controller.dart';

class LaporanLingkunganView extends GetView<LaporanLingkunganController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(Get.height * 0.02, Get.height * 0.03, Get.height * 0.02, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(LineIcons.angleLeft, color: Colors.black,),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        child: Text(
                          "Laporan Lingkungan",
                          style: TextStyle(
                              fontFamily: "SFProDisplay",
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Color(0xFF000000)
                          ),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(Get.height * 0.03, Get.height * 0.02, Get.height * 0.03, Get.height * 0.02),
                    child: ListView(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lokasi",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: controller.lokasi,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xFFABABAB)
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alasan",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: controller.alasan,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xFFABABAB)
                                    ),
                                  ),
                                  hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gambar",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){
                                  controller.ambilGambar();
                                },
                                child: Container(
                                  width: Get.width,
                                  height: Get.height * 0.2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          width: 1,
                                          color: Color(0xFFABABAB)
                                      )
                                  ),
                                  child: Obx((){
                                    return controller.ambil.value == false
                                        ? Center(
                                            child: Icon(LineIcons.camera, size: 60,),
                                          )
                                        : Image.file(
                                            controller.imageFile.value,
                                            fit: BoxFit.cover,
                                          );
                                  }),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              Get.back();
                              Get.back();
                            },
                            child: Text(
                              "Kirimkan",
                              style: GoogleFonts.roboto(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF55A169),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          )
      ),
    );
  }
}
