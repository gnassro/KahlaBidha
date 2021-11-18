import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/components/split_widget.dart';
import 'package:kahla_bidha_login_page/components/signin_component.dart';
import 'package:kahla_bidha_login_page/components/signup_component.dart';
import 'package:kahla_bidha_login_page/components/welcome_component.dart';

class LoginComponent extends StatefulWidget {
  const LoginComponent({Key? key}) : super(key: key);

  @override
  State createState() => LoginComponentState();
}

class LoginComponentState extends State<LoginComponent> {
  PageController? smallController;
  PageController? loginSignupController;


  @override
  void initState() {
    smallController = PageController(initialPage: 0);
    loginSignupController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    smallController!.dispose();
    loginSignupController!.dispose();

    super.dispose();
  }

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
        children:  [
          const Expanded(
            child: WelcomeComponent(),
          ),
          Expanded(
            child: loginSignupPageView(),
          )
        ],
      ),
    );
  }

  Widget loginSignupPageView({
    bool? isWide = true
  }
  ) {
    return PageView(
      controller: loginSignupController,
      scrollDirection: Axis.vertical,
      children:  [
        SigninComponent(
          isWide: isWide!,
          onSignupClick: () {
            loginSignupController!.animateToPage( 2,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeIn
            );
          },
        ),
        SignupComponent(
          isWide: isWide,
          onSigninClick: () {
            loginSignupController!.animateToPage( 1,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeIn
            );
          },
        )
      ],
    );
  }
  
  Widget smallScreen () {
    return PageView(
      controller: smallController,
      scrollDirection: Axis.horizontal,
      children: [
        WelcomeComponent(
          isWide: false,
          onClick: () {
            smallController!.animateToPage( 1,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeIn
            );
          },
        ),
        loginSignupPageView(
          isWide: false
        )
      ],
    );
  }


}