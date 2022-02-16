import 'package:flutter/material.dart';
import 'package:fsc_book_app/screens/home_list_page.dart';
import 'package:fsc_book_app/screens/splash_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  final screens = [
    const HomeListPage(),
    const HomeListPage(),
    const HomeListPage(),
    const HomeListPage()
  ];

  @override
  Widget build(BuildContext context) {
    List<Tab> _tabList = [
      Tab(
        text: AppLocalizations.of(context).fantasy,
      ),
      Tab(
        text: AppLocalizations.of(context).classisc,
      ),
      Tab(
        text: AppLocalizations.of(context).history,
      ),
      Tab(text: AppLocalizations.of(context).religion)
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: bottomNavigationWidget(),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                child: Image.network(
                    'https://www.woolha.com/media/2020/03/eevee.png'),
              ),
            )
          ],
        ),
        body: screens[_selectedIndex]);
  }

  Widget bottomNavigationWidget() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(fontFamily: 'ReadexRegular'),
          unselectedLabelStyle: const TextStyle(fontFamily: 'ReadexLight'),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: AppLocalizations.of(context).home,
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: AppLocalizations.of(context).favorite),
            BottomNavigationBarItem(
                icon: const Icon(Icons.shop),
                label: AppLocalizations.of(context).shop),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context).settings)
          ]),
    );
  }
}
