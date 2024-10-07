import 'package:flutter/material.dart';
import 'package:nubank/pages/home/findOut/models/card_find_out_more.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            //titulo
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            //espaçamento
            height: 16,
          ),
          findOutCards(), //chamando a função
        ],
      ),
    );
  }

//função onde chamo a classe de cards , e passo os atributos
  findOutCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        CardFindOutMore(
            imagem: "assets/images/seguroVida.png",
            title: "Seguro de vida",
            description: "Cuide bem de quem você ama de um jeito simples",
            buttonText: "Conhecer")
      ]),
    );
  }
}
