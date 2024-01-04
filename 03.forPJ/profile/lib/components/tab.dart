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
      children: [_widgetT(),Expanded(child:_widgetV())],
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
    return TabBar(
      controller: _tabController,
      tabs: [
      Tab(
        icon: Icon(Icons.computer),
      ),
      Tab(
        icon: Icon(Icons.photo),
      )
    ]);
  }

  Widget _widgetV() {
    return TabBarView(
      controller: _tabController,
      children: [
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.red,
      )
    ]);
  }
}
