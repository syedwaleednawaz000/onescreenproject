import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  String? text;
  double? size;
  Color? color;
  FontWeight? fontWeight;

  BuildText({Key? key, this.fontWeight, this.color, this.text, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17),
      child: Text(
        text!,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: size,
          color: color,
        ),
      ),
    );
  }
}
