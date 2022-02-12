import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fsc_book_app/screens/home_view.dart';
import 'package:fsc_book_app/screens/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey),
          scaffoldBackgroundColor: const Color.fromRGBO(251, 242, 200, 1),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black),
            color: Color.fromRGBO(251, 242, 200, 1),
            elevation: 0,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/home': (context) => HomeView(),
      },
    );
  }
}
