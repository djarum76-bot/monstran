import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/detail_berita_controller.dart';

class DetailBeritaView extends GetView<DetailBeritaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFDF5),
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/berita.png"),
                        fit: BoxFit.cover
                    )
                ),
                padding: EdgeInsets.only(left: Get.height * 0.02, right: Get.height * 0.02, bottom: Get.height * 0, top: Get.height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black12,
                          child: Icon(LineIcons.angleLeft, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Material(
                  color: Color(0xFFFDFDF5),
                  elevation: 5,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  child: Container(
                    width: Get.width,
                    height: Get.height * 0.6,
                    decoration: BoxDecoration(
                        color: Color(0xFFFDFDF5),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        )
                    ),
                    padding: EdgeInsets.only(left: Get.height * 0.02, right: Get.height * 0.02, top: Get.height * 0.03, bottom: Get.height * 0.02),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Penyebaran Sampah di Jawa Timur kian meluas",
                            style: TextStyle(
                                fontFamily: "SFProDisplay",
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color(0xFF404040)
                            ),
                          ),
                          Divider(
                            color: Color(0xFFABABAB),
                            thickness: 1,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                            style: TextStyle(
                                fontFamily: "SFProText",
                                fontSize: 16,
                                color: Color(0xFF404040),
                            ),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
