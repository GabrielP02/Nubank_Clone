import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({Key? key}) : super(key: key);

  @override
  State<AccountNubank> createState() => _AccountNubankState();
}

//Componente onde fica o nome conta abaixo do header, nele temos um a coluna
//onde vamos ter duas partes
class _AccountNubankState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(), // chamada do  primeiro wiget
          const SizedBox(
            height: 12,
          ),
          _moneyAccount(), //chamada do segundo widget
        ],
      ),
    );
  }

//criando o primeiro parte
  _accountChevron() {
    return Row(
      //Row para colocarmos o Texto de conto e o chevron
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

//segunda parte onde temos apenas o texto de saldo
  _moneyAccount() {
    return const Text(
      '100000',
      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    );
  }
}
