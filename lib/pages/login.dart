import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kahla_bidha_login_page/components/split_widget.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;

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
          Expanded(
              child: Center(
                child: loginField(),
              )
          )
        ],
      ),
    );
  }

  Widget smallScreen () {
    return Center(
        child: loginField(
            isWide: false
        )
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

  Widget loginField({bool isWide = true}) {

    return ListView(
      shrinkWrap: true,
      children: [
        const Text('Login',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 60.0,
                fontFamily: 'Praise'
            )
        ),
        const SizedBox(
          height: 26.0,
        ),
        FractionallySizedBox(
          widthFactor: 0.5,
          child: IntrinsicWidth(
            child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        FractionallySizedBox(
          widthFactor: 0.5,
          child: IntrinsicWidth(
            child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        FractionallySizedBox(
          widthFactor: 0.3,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Login"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(global_colors.blackColor),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(
                        top: 23.0,
                        bottom: 23.0
                    )
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )
                )
            ),
          ),
        )
      ],
    );
  }
}