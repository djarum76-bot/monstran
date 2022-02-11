import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key? key, required this.nama, required this.icon, required this.fungsi,
  }) : super(key: key);

  final String nama;
  final IconData icon;
  final void Function() fungsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: fungsi,
          child: CircleAvatar(
            child: Icon(
              icon,
              color: Colors.black,
              size: 30,
            ),
            radius: 30,
            backgroundColor: Colors.white,
          ),
        ),
        Text(
          nama,
          style: TextStyle(
              fontFamily: "SFProDisplay",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000)
          ),
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}