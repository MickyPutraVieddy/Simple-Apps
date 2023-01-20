import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_apps/color/colors.dart';

class WhatsappPlusButton extends StatelessWidget {
  const WhatsappPlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
          color: WhatsAppColors.tabFocusedColor,
          borderRadius: BorderRadius.circular(20.0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          child: Icon(
            Icons.add,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
