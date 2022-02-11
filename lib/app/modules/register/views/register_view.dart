import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:monstran/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(vertical: Get.height * 0.06, horizontal: Get.height * 0.04),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daftar",
                      style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Color(0xFF404040)
                      ),
                    ),
                    Center(
                      child: Image.asset('asset/daftar.png', fit: BoxFit.cover,width: Get.height * 0.4,),
                    ),
                    SizedBox(height: 25,),
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
                      controller: controller.email,
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
                        prefixIcon: Icon(LineIcons.envelopeAlt, color: Color(0xFF1C1B1F),),
                        hintText: "Email",
                        hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Obx((){
                      return TextFormField(
                        obscureText: controller.obscure.value,
                        controller: controller.password,
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
                          prefixIcon: Icon(LineIcons.key, color: Color(0xFF1C1B1F),),
                          suffixIcon: IconButton(
                            icon: Icon(controller.obscure.value ? Icons.visibility_off : Icons.visibility),
                            onPressed: () {
                              controller.obscure.toggle();
                            },
                          ),
                          hintText: "Password",
                          hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                      );
                    }),
                    SizedBox(height: 15,),
                    Container(
                      height: Get.height * 0.07,
                      child: Center(
                        child: Obx((){
                          return DropdownSearch<String>(
                            mode: Mode.DIALOG,
                            items: ["Masyarakat", "Petugas", "Pemerintah"],
                            hint: "Role",
                            showAsSuffixIcons: true,
                            onChanged: (value) => controller.role.value = value!,
                            selectedItem: controller.role.value,
                            dropdownSearchBaseStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                            dropdownSearchDecoration: InputDecoration(
                                fillColor: Color(0xFF49454F).withOpacity(0.08),
                                filled: true,
                                hintStyle: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 16),
                                prefixIcon: Icon(LineIcons.users),
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
                    SizedBox(height: 25,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: (){
                          Get.offAllNamed(Routes.DASHBOARD);
                        },
                        child: Text(
                          "Daftar",
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
                    SizedBox(height: 22,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sudah mempunyai akun ? ",
                            style: TextStyle(
                                fontFamily: "SFProDisplay",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF404040)
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Text(
                              "Masuk",
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
                    )
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}
