import 'package:flutter/material.dart';

class Tabo extends StatefulWidget {
  const Tabo({Key? key}) : super(key: key);

  @override
  State<Tabo> createState() => _TaboState();
}

class _TaboState extends State<Tabo> with SingleTickerProviderStateMixin {
  //다중상속으로 싱티프스믹신 상속//싱티프스믹신-한 가지의 애니메이션을 전환 시 적용해주는 크라스,sliding ani※티프스믹스인은 다름
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_widgetT(), Expanded(child: _widgetV())],
    );
  }

  TabController? _tabController;
  @override //탭컨트롤 초기화 및 재정의
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2,
        vsync:
            this); //length=the number of the tabs(>1),vsync=connection setting(this=itself)
  }

  Widget _widgetT() {
    return TabBar(controller: _tabController, tabs: [
      Tab(
        icon: Icon(Icons.computer),
      ),
      Tab(
        icon: Icon(Icons.photo),
      )
    ]);
  }

  Widget _widgetV() {
    return TabBarView(controller: _tabController, children: [
      // using gridview-정해진 이미지를 뿌린다
      // 웹 상의 이미지-GridView.builder
      GridView.builder(
        // 그리드 위임-연결된 이미지를 하나씩 그리드에 배치한다
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // 전체 아이템 개수 설정
        itemCount: 42,
        // item build
        itemBuilder: (context, index) {
          // debugPrint('$context/$index');
          return Image.network('https://picsum.photos/id/${index + 1}/200/200');
        },
      ),
      GridView.builder(
        // 그리드 위임-연결된 이미지를 하나씩 그리드에 배치한다
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // 전체 아이템 개수 설정
        itemCount: 42,
        // item build
        itemBuilder: (context, index) {
          // debugPrint('$context/$index');
          return Image.network('https://picsum.photos/id/${index + 43}/200/200');
        },
      )
      // Container(
      //   color: Colors.blue,
      // ),
      // Container(
      //   color: Colors.red,
      // )
    ]);
  }
}
