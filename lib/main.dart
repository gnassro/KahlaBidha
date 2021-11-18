import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/pages/login.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';
import 'package:kahla_bidha_login_page/scroll_behavior.dart';

void main() {
  //TODO uncomment it when release
  //configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehaviorForWeb(),
      debugShowCheckedModeBanner: false,
      title: 'Kahla Bidha Responsive Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginComponent(),
    );
  }
}