/// @@@ PEARS TRADE APP @@@
/// @@@ version: 0.0-beta @@@
/// @@@ Environment: local @@@
/// @@@ App Features: Inception ✨
/// @@@ WebServer: GCP @@@
/// @@@ AUTHOR: Ahmed Maushook @@@
/// @@@ COPYRIGHT: BrainVaultTech @@@

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pears_trade/helpers/theme_config.dart';
import 'package:pears_trade/providers/auth.dart';
import 'package:pears_trade/providers/light.dart';
import 'package:pears_trade/screens/landing_screen.dart';
import 'package:pears_trade/screens/liquid_welcome_screen.dart';
import 'package:pears_trade/screens/my_splash_screen.dart';
import 'package:pears_trade/figma/signup_screen.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: "assets/.env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    final initTheme = brightness == Brightness.dark ? nightTheme : dayTheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Auth()),
        ChangeNotifierProvider(create: (ctx) => Light()),
      ],
      child: Consumer<Auth>(
        builder: (ctx, authData, _) {
          return ThemeProvider(
            initTheme: dayTheme,
            builder: (_, myTheme) => MaterialApp(
              title: 'Pears Trade',
              theme: myTheme,
              routes: {
                '/': (ctx) => authData.isAuth
                    ? LandingScreen()
                    : FutureBuilder(
                        future: authData.tryAutoLogin(),
                        builder: (context, snapshot) =>
                            snapshot.connectionState == ConnectionState.waiting
                                ? MySplashScreen()
                                : LiquidWelcomeScreen(),
                      ),
                LandingScreen.routeName: (ctx) => LandingScreen(),
                LiquidWelcomeScreen.routeName: (ctx) => LiquidWelcomeScreen(),
                SignupScreen.routeName: (ctx) => SignupScreen(),
              },
              debugShowCheckedModeBanner: false,
            ),
          );
        },
      ),
    );
  }
}
