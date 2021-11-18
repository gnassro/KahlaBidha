import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;
import 'package:google_fonts/google_fonts.dart';

class SigninComponent extends StatelessWidget {
  final bool? isWide;
  final VoidCallback? onSignupClick;
  const SigninComponent({
    Key? key,
    this.isWide = true,
    this.onSignupClick
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
            widthFactor: isWide! ? 0.5 : 0.8,
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
            widthFactor:  isWide! ? 0.5 : 0.8,
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
            widthFactor: isWide! ? 0.3 : 0.6,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                  "Login",
                style: TextStyle(
                  color: global_colors.whiteColor
                ),
              ),
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
          ),
          const SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                child: const Text("Signup"),
                onPressed: () => onSignupClick!(),
              )
            ],
          )
        ],
      ),
    );
  }
}