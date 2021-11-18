import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kahla_bidha_login_page/pages/login.dart';
//import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;
import 'package:kahla_bidha_login_page/scroll_behavior.dart';
import 'package:flutter/services.dart';
import 'package:kahla_bidha_login_page/pages/splash_screen.dart';

void main() {
  //TODO uncomment it when release
  //configureApp();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot) {
          // Show splash screen while waiting for app resources to load:
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MaterialApp(home: Splash());
          } else {
            // Loading is done, return the app:
            return const AppComponent();
          }
        }
    );
  }
}


class AppComponent extends StatelessWidget {
  const AppComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollBehaviorForWeb(),
      debugShowCheckedModeBanner: false,
      title: 'Kahla Bidha Responsive Login UI',
      theme: ThemeData(
        primarySwatch: global_colors.primarySwatch(),
      ),
      home: const LoginComponent(),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}