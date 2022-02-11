import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/laporan_kegiatan_controller.dart';

class LaporanKegiatanView extends GetView<LaporanKegiatanController> {
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
                          "Laporan Kegiatan",
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
                                "Nama Agenda",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: controller.nama,
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
                                "Tanggal",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              Obx((){
                                return controller.tanggal.value == ""
                                    ? TextFormField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xFFABABAB)
                                            ),
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: ()async{
                                              final DateTime? picked = await showDatePicker(
                                                context: context,
                                                initialDate: controller.selectedDate.value,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2025),
                                              );

                                              if(picked != null && picked != controller.selectedDate.value){
                                                controller.selectedDate.value = picked;
                                                controller.tanggal.value = "${DateFormat.yMMMMd('en_US').format(controller.selectedDate.value)}";
                                              }
                                            },
                                            child: Icon(LineIcons.angleDown, color: Color(0xFF1C1B1F),),
                                          ),
                                          hintText: "",
                                          hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                        ),
                                      )
                                    : TextFormField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xFFABABAB)
                                            ),
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: ()async{
                                              final DateTime? picked = await showDatePicker(
                                                context: context,
                                                initialDate: controller.selectedDate.value,
                                                firstDate: DateTime(1900),
                                                lastDate: DateTime(2025),
                                              );

                                              if(picked != null && picked != controller.selectedDate.value){
                                                controller.selectedDate.value = picked;
                                                controller.tanggal.value = "${DateFormat.yMMMMd('en_US').format(controller.selectedDate.value)}";
                                              }
                                            },
                                            child: Icon(LineIcons.angleDown, color: Color(0xFF1C1B1F),),
                                          ),
                                          hintText: "${controller.tanggal.value}",
                                          hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                        ),
                                      );
                              })
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Banyaknya Sampah",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: controller.banyak,
                                keyboardType: TextInputType.number,
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
                                "Keterangan",
                                style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: controller.ket,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
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
