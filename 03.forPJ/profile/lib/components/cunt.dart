import 'package:flutter/material.dart';

class Cunt extends StatelessWidget {
  const Cunt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Spacer(),
        _widgetI('100', 'Posts'),
        // Spacer(),
        _widgetL(),
        // Spacer(),
        _widgetI('100', 'Likes'),
        // Spacer(),
        _widgetL(),
        // Spacer(),
        _widgetI('20', 'Shares'),
        // Spacer(),
      ],
    );
  }
}

Widget _widgetI(String cunt, String tit) {
  return Column(
    children: [
      Text(
        cunt,
        style: TextStyle(fontSize: 13),
      ),
      Text(
        tit,
        style: TextStyle(fontSize: 3 * 3 * 2),
      ),
    ],
  );
}

Widget _widgetL() {
  return Container(
    width: 2,
    height: 30 * 2,
    color: Colors.blue,
  );
}
