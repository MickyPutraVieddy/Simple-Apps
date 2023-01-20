import 'package:flutter/material.dart';
import '../color/colors.dart';

class WhatsappListCalls extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String ImageUrl, name, chat;

  const WhatsappListCalls({
    super.key,
    required this.ImageUrl,
    required this.name,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: width,
        height: 200,
        color: WhatsAppColors.backgroundColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () async {},
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.asset(
                          ImageUrl,
                          width: 58.0,
                          height: 58.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.call_made_sharp,
                                    color: WhatsAppColors.tabFocusedColor,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    chat,
                                    style: TextStyle(
                                      color:
                                          WhatsAppColors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Icon(
                              Icons.call,
                              color: WhatsAppColors.tabFocusedColor,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: width,
                    child: Divider(
                      thickness: 8.0,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
