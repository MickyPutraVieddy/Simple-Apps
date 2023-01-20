import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_apps/color/colors.dart';
import 'package:simple_apps/pages/Whatsapp_List_Contact.dart';

class WhatsappChats extends StatelessWidget {
  const WhatsappChats({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: double.infinity,
      color: WhatsAppColors.backgroundColor,
      child: ListView(
        primary: false,
        children: <Widget>[
          WhatsappListContact(
              name: "Angga Mokondo",
              Imageurl: "lib/image/gambar10.jpeg",
              chat: "Aku adalah seorang Mokondo",
              date: "1/18/2023")
        ],
      ),
    );
  }
}
