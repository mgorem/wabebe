import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget greenIntroWidget() {
  return Container(
    width: Get.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/mask.png"),
        fit: BoxFit.cover,
      ),
    ),
    height: Get.height*0.6,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/leaf icon.svg"),

        const SizedBox(height: 10,),

        Text("WABEBE", style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),),
      ],
    ),
  );
}