import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashView extends StatefulWidget {
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/splash.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Text(
            AppLocalizations.of(context).splash_title,
            style: const TextStyle(
              fontFamily: 'ReadexBold',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 60),
          Text(
            AppLocalizations.of(context).splash_description,
            style: const TextStyle(
              fontFamily: 'ReadexLight',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 8),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shadowColor: MaterialStateProperty.all(Colors.transparent)),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 16,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context).splash_button_title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ReadexLight',
                      color: Colors.black87),
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
