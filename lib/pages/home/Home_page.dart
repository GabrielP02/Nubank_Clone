import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/home/account/account.dart';
import 'package:nubank/pages/home/actions/menu_itens.dart';
import 'package:nubank/pages/home/creditsCard/credit_card.dart';
import 'package:nubank/pages/home/creditsCard/my_credits_card.dart';
import 'package:nubank/pages/home/findOut/find_out.dart';
import 'package:nubank/pages/home/loan/loan.dart';
import 'package:nubank/pages/home/model/header.dart';
import 'package:nubank/pages/home/notification/notification_page.dart';
import 'package:nubank/utils/colors_standard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

//Home page onde foi chamadas todas as outras pages
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backGroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                AccountNubank(),
                MenuItens(),
                MyCreditCards(),
                NotificationPage(),
                Divider(
                  thickness: 1.6,
                ),
                SizedBox(
                  height: 15,
                ),
                CreditCard(),
                Divider(
                  thickness: 1.6,
                ),
                Loan(),
                Divider(
                  thickness: 1.6,
                ),
                FindOutMore(),
              ],
            )),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        preferredSize: const Size.fromHeight(0));
  }
}
