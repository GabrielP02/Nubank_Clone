import 'package:flutter/material.dart';
import 'package:nubank/utils/colors_standard.dart';

class SeguroVida extends StatelessWidget {
  const SeguroVida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _close(),
            _SeguroVida(),
            _Ajuda(),
          ],
        ),
        const SizedBox(height: 15),
        Image.asset(
          //imagem
          "assets/images/personagensSeguro.jpeg",
          fit: BoxFit.cover,
          width: 150,
        ),
      ]),
    );
  }

  _close() {
    return GestureDetector(
        onTap: () {},
        child: Container(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                color: Colors.white,
              )),
        ));
  }

  _SeguroVida() {
    return Container(
      child: const Text(
        'Seguro Vida',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  _Ajuda() {
    return GestureDetector(
        onTap: () {},
        child: Container(
          color: Colors.transparent,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help,
                color: Colors.white,
              )),
        ));
  }
}
