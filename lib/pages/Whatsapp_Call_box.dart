import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_apps/color/colors.dart';
import 'package:simple_apps/pages/Whatsapp_list_calls.dart';
import 'WhatsappStatus_box.dart';

class WhatsappCallsBox extends StatelessWidget {
  const WhatsappCallsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: WhatsAppColors.backgroundColor,
      child: Column(children: [
        WhatsappListCalls(
          ImageUrl: "lib/image/gambar10.jpeg",
          name: "Angga Mokondo",
          chat: "46 minutes ago",
        ),
      ]),
    );
  }
}
