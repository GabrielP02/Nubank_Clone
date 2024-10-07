import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Loan extends StatelessWidget {
  const Loan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _textLoanChevron(), // chamando funções
        _UnderText(),
      ]),
    );
  }

//criando texto de empréstimo e Chevron
  _textLoanChevron() {
    return Row(
      //Row para colocar os elementos na mesma linha
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Empréstimo',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

//texto que fica embaixo do texto de empréstimo
  _UnderText() {
    return Padding(
        padding: const EdgeInsets.only(top: 16.6),
        child: Text(
          'Tudo certo! Você está em dia',
          style: TextStyle(color: Colors.grey),
        ));
  }
}
