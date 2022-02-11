import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:monstran/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  width: Get.width,
                  height: Get.height * 0.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF58CD64), Color(0xFF549D69)]
                      )
                  ),
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.06, horizontal: Get.height * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(LineIcons.lock, color: Colors.white,size: 60,),
                      Text(
                        "Masuk",
                        style: TextStyle(
                          fontFamily: "SFProDisplay",
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Color(0xFFFFFFFF)
                        ),
                      ),
                      Text(
                        "Masuk ke akun anda untuk akses fitur dari Aplikasi Mersoft",
                        style: TextStyle(
                            fontFamily: "SFProDisplay",
                            fontSize: 14,
                            color: Color(0xFFFFFFFF)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.06, horizontal: Get.height * 0.04),
                    child: Column(
                      children: [
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
                        SizedBox(height: 20,),
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
                              prefixIcon: Icon(LineIcons.user, color: Color(0xFF1C1B1F),),
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
                        SizedBox(height: 25,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: (){
                              Get.offAllNamed(Routes.DASHBOARD);
                            },
                            child: Text(
                              "Masuk",
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
                        Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Belum mempunyai akun ? ",
                                    style: TextStyle(
                                        fontFamily: "SFProDisplay",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF404040)
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Get.toNamed(Routes.REGISTER);
                                    },
                                    child: Text(
                                      "Daftar",
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
                        )
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
