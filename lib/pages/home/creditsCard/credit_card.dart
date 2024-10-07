import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //container para chamar as funções que retronar os elementos da tela
      margin: const EdgeInsets.symmetric(horizontal: 20), //alinnhamentos na
      //horizontal entre eles
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 10,
        children: [
          _textCreditCard(),
          _invoice(),
        ],
      ),
    );
  }

  _textCreditCard() {
    return Row(
      //Row com texto e icone de chevron
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cartão de Crédito',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

//Coluna com 3 textos e um botão
  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fatura fechada',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          //para dar espço entre os elememtos
          height: 12,
        ),
        Text(
          "R\$2.123,39",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          //para dar espço entre os elememtos
          height: 12,
        ),
        Text(
          "Vencimento dia 15",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        Container(
          //container de botão
          margin: const EdgeInsets.only(top: 4, bottom: 16),
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(15)),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: const Text(
              'Renegociar',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
