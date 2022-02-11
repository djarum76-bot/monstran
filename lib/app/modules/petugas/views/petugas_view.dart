import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/petugas_controller.dart';

class PetugasView extends GetView<PetugasController> {
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
                      "Data Petugas",
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
                    child: ListView.separated(
                        itemBuilder: (context, index){
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                            ),
                            title: Text(
                              "Petugas ${index + 1}",
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            subtitle: Text(
                              "Perempuan | 22 Tahun",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
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
