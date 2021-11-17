import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;
import 'package:google_fonts/google_fonts.dart';

class SigninComponent extends StatelessWidget {
  const SigninComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Text('Signin',
              textAlign: TextAlign.center,
              style: GoogleFonts.cookie(
                  fontSize: 80.0,
                  color: global_colors.blackColor,
              )
          ),
          const SizedBox(
            height: 30.0,
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
      ),
    );
  }
}