import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class ProfilItem extends StatelessWidget {
  const ProfilItem({
    Key? key, required this.icon, required this.nama, required this.fungsi,
  }) : super(key: key);

  final IconData icon;
  final String nama;
  final void Function() fungsi;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFD9E7CA)
      ),
      margin: EdgeInsets.only(bottom: Get.height * 0.01),
      child: ListTile(
        onTap: fungsi,
        leading: Icon(icon, color: Colors.black,),
        trailing: Icon(LineIcons.angleRight, color: Colors.black,),
        title: Text(
          nama,
          style: TextStyle(
              fontFamily: "SFProDisplay",
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF000000)
          ),
        ),
      ),
    );
  }
}