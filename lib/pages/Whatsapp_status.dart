import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_apps/color/colors.dart';
import 'WhatsappStatus_box.dart';

class WhatsappStatus extends StatelessWidget {
  const WhatsappStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: WhatsAppColors.backgroundColor,
      child: Column(children: [
        WhatsappStatusBox(
          ImageUrl: "lib/image/gambar10.jpeg",
          name: "My Status",
          chat: "tap to add status",
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.lock,
                size: 15.0, color: WhatsAppColors.white.withOpacity(0.5)),
            SizedBox(
              width: 0.5,
            ),
            Text(
              "Your status update are",
              style: TextStyle(color: WhatsAppColors.white.withOpacity(0.5)),
            ),
            SizedBox(
              width: 6.0,
            ),
            Text(
              "end-to-end encryption",
              style: TextStyle(color: WhatsAppColors.tabFocusedColor),
            )
          ],
        )
      ]),
    );
  }
}
