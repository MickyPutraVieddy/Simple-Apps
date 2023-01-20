import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_apps/pages/Whatsapp_Call_box.dart';
import 'package:simple_apps/pages/Whatsapp_status.dart';
import 'Whatsapp_Appbar.dart';
import 'Whatsapp_Chats.dart';
import '../color/colors.dart';

void main(List<String> args) => runApp(HomePages());

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: WhatsAppColors.backgroundColor),
      home: ChatsPage(),
    );
  }
}

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const WhatsAppBar(),
        body: TabBarView(
          children: <Widget>[
            WhatsappChats(),
            WhatsappStatus(),
            WhatsappCallsBox()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {},
          child: Icon(Icons.chat),
          backgroundColor: WhatsAppColors.tabFocusedColor,
        ),
      ),
    );
  }
}
