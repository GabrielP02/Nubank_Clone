import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class MenuItens extends StatefulWidget {
  const MenuItens({Key? key}) : super(key: key);

  @override
  State<MenuItens> createState() => _MenuItensState();
}

//componente onde vamos ter os botões com opções
class _MenuItensState extends State<MenuItens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //criação do container
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            //chamando funções que retorna os botões , temos que
            //passar os parametros de testo e icone
            _itemAction(
              icon: Icons.pix,
              name: "Área pix",
              isFirst: true,
            ),
            _itemAction(icon: Icons.money, name: "Pagamentos"),
            _itemAction(icon: Icons.qr_code, name: "QRcode"),
            _itemAction(icon: Icons.attach_money, name: "Transferir"),
            /* _itemAction(icon: MdiIcons.creditCard, name: "Recarga"),
            _itemAction(icon: MdiIcons.heartOutline, name: "Doação"),*/
          ],
        ),
      ),
    );
  }

//Função para criar os botões, criei com parametros para evitar
//repetição de codigo
  _itemAction({required IconData icon, required String name, bool? isFirst}) {
    return Container(
      padding: (isFirst ?? false)
          ? const EdgeInsets.only(right: 7, left: 20)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            //container dos botões com icones
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(
            //container de textos
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
