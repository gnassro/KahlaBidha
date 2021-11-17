import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;


class SignupComponent extends StatelessWidget {
  const SignupComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const Text('Signup',
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