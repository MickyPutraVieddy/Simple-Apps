import 'package:flutter/material.dart';
import '../color/colors.dart';
import 'Whatsapp_Tab.dart';

class WhatsAppBar extends StatefulWidget implements PreferredSizeWidget {
  const WhatsAppBar({super.key});

  @override
  State<WhatsAppBar> createState() => _MainActivityState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100.0);
}

class _MainActivityState extends State<WhatsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Whatsapp",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        backgroundColor: WhatsAppColors.appBarColor,
        bottom: TabBar(
          indicatorColor: WhatsAppColors.tabFocusedColor,
          indicatorWeight: 3.5,
          labelColor: WhatsAppColors.tabFocusedColor,
          unselectedLabelColor: WhatsAppColors.white.withOpacity(0.5),
          tabs: <Widget>[
            WhatsappTab(text: "Chats"),
            WhatsappTab(text: "Status"),
            WhatsappTab(text: "Calls")
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
