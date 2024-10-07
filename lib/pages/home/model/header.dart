import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/colors_standard.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

//Header
class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(height: 10),
          // _welcome(),
        ],
      ),
    );
  }

//criando icone de perfil
  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: secondaryPurple),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            )),
      ),
    );
  }

//criando icones de oções em uma row para ficarem alinhados na mesma linha
  _options() {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.visibility_outlined,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.question_mark_rounded,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mark_email_read_outlined,
              color: Colors.white,
            )),
      ],
    );
  }
/*
  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        'Olá, Gabriel',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }*/
}
