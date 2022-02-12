import 'package:flutter/material.dart';
import 'package:fsc_book_app/screens/splash_view.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  List<Tab> _tabList = [
    Tab(
      text: "Magazines",
    ),
    Tab(
      text: "Books",
    ),
    Tab(
      text: "Newslats",
    ),
    Tab(
      text: "Audiobook",
    )
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: bottomNavigationWidget(),
      appBar: AppBar(
        leading: Icon(Icons.menu),
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
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              tabBarWidget(_tabController),
              tabBarChildrenWidget(_tabController)
            ],
          )
        ],
      ),
    );
  }

  Widget bottomNavigationWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Home')
      ]),
    );
  }

  Widget tabBarWidget(_tabController) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TabBar(
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.transparent,
          tabs: _tabList),
    );
  }

  Widget tabBarChildrenWidget(
    _tabController,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: TabBarView(
        controller: _tabController,
        children: [
          SplashView(),
          SplashView(),
          SplashView(),
          SplashView(),
        ],
      ),
    );
  }
}
