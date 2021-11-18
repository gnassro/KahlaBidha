import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;
import 'package:google_fonts/google_fonts.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor:
      lightMode ? global_colors.whiteColor : global_colors.blackColor,
      body: Center(
          child: lightMode
              ?
          Text('Kahla Bidha',
              textAlign: TextAlign.center,
              style: GoogleFonts.cookie(
                fontSize: 80.0,
                color: global_colors.blackColor,
              )
          )
              :
          Text('Kahla Bidha',
              textAlign: TextAlign.center,
              style: GoogleFonts.cookie(
                fontSize: 80.0,
                color: global_colors.whiteColor,
              )
          )
      ),
    );
  }
}