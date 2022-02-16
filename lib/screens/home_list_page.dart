import 'package:flutter/material.dart';
import 'package:fsc_book_app/models/book_list.dart';
import 'package:fsc_book_app/screens/book_detail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeListPage extends StatefulWidget {
  const HomeListPage({Key? key}) : super(key: key);

  @override
  State<HomeListPage> createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage>
    with TickerProviderStateMixin {
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
    TabController _tabController = TabController(length: 4, vsync: this);
    return ListView(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            tabBarWidget(_tabController, _tabList),
            tabBarChildrenWidget(_tabController)
          ],
        )
      ],
    );
  }

  Widget tabBarWidget(_tabController, _tabList) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TabBar(
          labelStyle: const TextStyle(fontFamily: 'ReadexMedium', fontSize: 18),
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: TabBarView(
        controller: _tabController,
        children: [tab1Widget(), tab1Widget(), tab1Widget(), tab1Widget()],
      ),
    );
  }

  Widget tab1Widget() {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bookList(),
            const SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color.fromRGBO(244, 220, 148, 1),
                  ),
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context).shop_title,
                          style: const TextStyle(fontFamily: 'ReadexRegular'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(AppLocalizations.of(context).shop_description,
                            style: const TextStyle(fontFamily: 'ReadexLight'))
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).trending_book,
                        style: const TextStyle(fontFamily: 'ReadexBold')),
                    Text(AppLocalizations.of(context).view_all,
                        style: const TextStyle(fontFamily: 'ReadexRegular'))
                  ],
                )),
            bookList(),
            bookList(),
          ],
        ));
  }

  Widget bookList() {
    return Expanded(
      flex: 5,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: booklistmodel.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailPage(
                      booklist: booklistmodel[index],
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 3.5,
                        child: Image.network(booklistmodel[index].imageLink)),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          booklistmodel[index].title,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontFamily: 'ReadexRegular',
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          booklistmodel[index].author,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'ReadexRegular',
                              fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
