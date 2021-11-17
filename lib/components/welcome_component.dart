import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        FractionallySizedBox(
          widthFactor: 0.5,
          child: AutoSizeText('Kahla Bidha',
              textAlign: TextAlign.center,
              maxLines: 2,
              minFontSize: 80.0,
              style: GoogleFonts.pacifico(
                  fontSize: 140.0,
                  color: global_colors.whiteColor,
                height: 1.0
              )
          ),
        ),
      ],
    );
  }
}