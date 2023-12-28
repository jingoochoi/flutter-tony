import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cookbook/components/list.dart';
import 'package:cookbook/components/menu.dart';
import 'package:cookbook/components/title.dart';

class Pago extends StatelessWidget {
  const Pago({Key? key}) : super(key: key); //Key?key->null safety

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: _appBar(),
      body: Column(children: [Titl()],),
    );
  }
}

// 앱바는 앱 최상단 구역을 차지
// leading(topleft), title(topcenter), actions(contents part)
// flexibleSpace(앱바 하단 위 공간->SafeArea위젯에서 이 공백을 자동조정함), bottom(bottom part)
AppBar _appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    leading: Icon(CupertinoIcons.text_justify),
    title: Text("tony's golden recipe",style: TextStyle(color: Colors.pink),),
    actions: [
      Icon(
        CupertinoIcons.search,
        color: Colors.blue,
      ),
      SizedBox(
        width: 10,
      ),
      Icon(
        CupertinoIcons.heart,
        color: Colors.red,
      ),
      SizedBox(
        width: 10,
      )
    ],
  );
}
