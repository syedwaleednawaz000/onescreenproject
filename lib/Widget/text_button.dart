import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextBottun extends StatelessWidget {
  final String text;
  final VoidCallback clickCallback;
  TextBottun({Key? key, required this.text, required this.clickCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => clickCallback(),
      child: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: Container(
            height: Get.height * 0.07,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffb11aa7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
