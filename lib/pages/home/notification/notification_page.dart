import 'package:flutter/material.dart';
import 'package:nubank/utils/colors_standard.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [_rendimentos()],
      ),
    );
  }

  Widget _rendimentos() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Guarde seu dinheiro em caixinhas \n",
              style: TextStyle(
                  color: backGroundColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: "Acessando a área de planejamento",
              style: TextStyle(color: Colors.black, fontSize: 16)),
        ]),
      ),
    );
  }
}
