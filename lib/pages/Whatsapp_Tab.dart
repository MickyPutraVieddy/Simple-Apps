import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsappTab extends StatelessWidget {
  final String text;

  WhatsappTab({super.key, required this.text});

  Widget build(BuildContext context) {
    return Tab(
      text: text,
    );
  }
}
