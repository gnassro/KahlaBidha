import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/components/split_widget.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;
import 'package:kahla_bidha_login_page/components/signin_component.dart';
import 'package:kahla_bidha_login_page/components/signup_component.dart';
import 'package:kahla_bidha_login_page/components/welcome_component.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({Key? key}) : super(key: key);

  @override
  State createState() => LoginComponentState();
}

class LoginComponentState extends State<LoginComponent> {

  final controller = PageController(
    initialPage: 0
  );
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
        children: const [
          Expanded(
            child: WelcomeComponent(),
          ),
          Expanded(
            child: SigninComponent(),
          )
        ],
      ),
    );
  }

  Widget smallScreen () {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: const [
        WelcomeComponent(),
        SigninComponent()
      ],
    );
  }


}