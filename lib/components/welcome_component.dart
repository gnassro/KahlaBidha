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
        Container(
          alignment: AlignmentDirectional.topStart,
          child: Text('Kahla',
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                fontSize: 40.0,
                color: global_colors.whiteColor
              )
          ),
        ),
        Container(
          alignment: AlignmentDirectional.bottomEnd,
          child: Text('Bidha',
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                  fontSize: 40.0,
                  color: global_colors.whiteColor
              )
          ),
        ),
      ],
    );
  }
}