import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/laporan_controller.dart';

class LaporanView extends GetView<LaporanController> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "History Laporan",
                      style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xFF000000)
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF000000).withOpacity(0.04),
                        child: Icon(Icons.add,color: Colors.black,),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: controller.search,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF49454F).withOpacity(0.08),
                    prefixIcon: Icon(LineIcons.search, color: Color(0xFF1C1B1F),),
                    hintText: "Search",
                    hintStyle: TextStyle(
                        fontFamily: "SFProText",
                        fontSize: 17,
                        color: Color(0xFF8E8E93)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: Get.height * 0.015),
                    child: ListView.separated(
                        itemBuilder: (context, index){
                          return Container(
                            height: Get.height * 0.09,
                            margin: EdgeInsets.only(bottom: Get.height * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Laporan Sampah",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                        color: Color(0xFF000000)
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFD9E7CA),
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      height: Get.height * 0.03,
                                      width: Get.height * 0.1,
                                      child: Center(
                                        child: Text(
                                          "2 Day Ago",
                                          style: TextStyle(
                                              fontFamily: "SFProDisplay",
                                              fontSize: 11,
                                              color: Color(0xFF000000)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Ada sampah di daerah alun alun dan harus dibersihkan dengan segera ",
                                  style: TextStyle(
                                      fontFamily: "SFProDisplay",
                                      fontSize: 14,
                                      color: Color(0xFF000000)
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index){
                          return Divider(
                            color: Colors.black,
                          );
                        },
                        itemCount: 4
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
