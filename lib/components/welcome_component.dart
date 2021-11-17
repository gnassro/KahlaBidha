import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Text('Kahla Bidha',
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