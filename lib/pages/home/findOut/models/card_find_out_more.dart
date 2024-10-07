import 'package:flutter/material.dart';
import 'package:nubank/utils/colors_standard.dart';

//aqui foi feito varios atributos para montarmos varios cards
//usando apenas essa classe
class CardFindOutMore extends StatelessWidget {
  final String imagem;
  final String title;
  final String description;
  final String buttonText;

  const CardFindOutMore({
    Key? key,
    required this.imagem, //required para ser obrigatorio
    required this.title,
    required this.description,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //container sinza
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        //coluna com imagem,textos e botões
        children: [
          Image.asset(
            //imagem
            imagem,
            fit: BoxFit.cover,
            width: 230,
          ),
          const SizedBox(height: 22), //espçamento
          Text(
            //textos
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Container(
            //container para criar o botão
            margin: const EdgeInsets.only(left: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
