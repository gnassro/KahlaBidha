import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/components/split_widget.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;
import 'package:kahla_bidha_login_page/components/signin_component.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({Key? key}) : super(key: key);

  @override
  State createState() => LoginComponentState();
}

class LoginComponentState extends State<LoginComponent> {

  @override
  Widget build(BuildContext context) {

    return SplitWidget(
      body: wideScreen(),
      bodySmallScreen: smallScreen(),
      haSidebar: false,
      hasTwoLayout: true,
    );
  }

  Widget wideScreen() {
    return CupertinoCard(
      radius: const BorderRadius.all(Radius.circular(0.0)),
      elevation: 10.0,
      margin: const EdgeInsets.all(35.0),
      child: Row(
        children: [
          Expanded(
              child: Container(
                color: global_colors.blackColor,
                child: Center(
                  child: wideLeft(),
                ),
              )
          ),
          const Expanded(
              child: Center(
                child: SigninComponent(),
              )
          )
        ],
      ),
    );
  }

  Widget smallScreen () {
    return const Center(
        child: SigninComponent()
    );
  }

  Widget wideLeft() {
    return ListView(
      shrinkWrap: true,
      children: const [
        Text('Optic',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 200.0,
                fontFamily: 'Praise'
            )
        ),
      ],
    );
  }


}