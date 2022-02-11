import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:monstran/app/routes/app_pages.dart';

import '../controllers/personal_data_controller.dart';

class PersonalDataView extends GetView<PersonalDataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.12,
                padding: EdgeInsets.fromLTRB(Get.height * 0.02, Get.height * 0.04, Get.height * 0.02, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Personal Data",
                      style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Color(0xFF404040)
                      ),
                    ),
                    Text(
                      "Masuk ke akun anda untuk akses fitur dari Aplikasi Mersoft",
                      style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF404040)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(Get.height * 0.02, 0, Get.height * 0.02, Get.height * 0.04),
                    child: ListView(
                      children: [
                        TextFormField(
                          controller: controller.nama,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFF49454F).withOpacity(0.08),
                            prefixIcon: Icon(LineIcons.user, color: Color(0xFF1C1B1F),),
                            hintText: "Nama",
                            hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          controller: controller.nohp,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFF49454F).withOpacity(0.08),
                            prefixIcon: Icon(LineIcons.mobilePhone, color: Color(0xFF1C1B1F),),
                            hintText: "Nomor HP",
                            hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: Get.height * 0.07,
                          child: Center(
                            child: Obx((){
                              return DropdownSearch<String>(
                                mode: Mode.DIALOG,
                                items: ["Laki - Laki", "Perempuan"],
                                showAsSuffixIcons: true,
                                onChanged: (value) => controller.jenis_kelamin.value = value!,
                                selectedItem: controller.jenis_kelamin.value,
                                dropdownSearchBaseStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                dropdownSearchDecoration: InputDecoration(
                                    fillColor: Color(0xFF49454F).withOpacity(0.08),
                                    filled: true,
                                    hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                    prefixIcon: Icon(LineIcons.transgender),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    )
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Obx((){
                          return controller.tanggal.value == ""
                              ? TextFormField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF49454F).withOpacity(0.08),
                                    prefixIcon: Icon(LineIcons.calendar, color: Color(0xFF1C1B1F),),
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
                                    hintText: "Tanggal Lahir",
                                    hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                  ),
                                )
                              : TextFormField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF49454F).withOpacity(0.08),
                                    prefixIcon: Icon(LineIcons.calendar, color: Color(0xFF1C1B1F),),
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
                        }),
                        SizedBox(height: 15,),
                        TextFormField(
                          controller: controller.alamat,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFF49454F).withOpacity(0.08),
                            hintText: "Alamat",
                            hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              Get.back();
                            },
                            child: Text(
                              "Simpan",
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
